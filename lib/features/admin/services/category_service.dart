import 'dart:developer' as dev;
import 'package:dio/dio.dart';
import 'package:prm_project/core/api/api_client.dart';
import 'package:public_openapi/public_openapi.dart';

class CategoryService {
  final CategoryApi _categoryApi;

  CategoryService({CategoryApi? categoryApi})
    : _categoryApi = categoryApi ?? ApiClient.openApi.getCategoryApi();

  Future<List<CategorySummaryResponse>> getCategories({
    ProductType? type,
    String? search,
    String? sortBy,
    bool? sortDescending,
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    try {
      // Admin screen should prioritize admin endpoint because it contains
      // all records (including newly created categories without parent).
      final flat = await _getFlatCategories(
        type: type,
        pageNumber: pageNumber,
        pageSize: pageSize,
      );

      // Keep grouped endpoint only as a soft supplement for edge cases.
      final grouped = await _getGroupedFlatCategories(type: type).catchError((
        e,
        st,
      ) {
        dev.log('[CategoryService] grouped endpoint error: $e', stackTrace: st);
        return <CategorySummaryResponse>[];
      });

      final merged = <String, CategorySummaryResponse>{};
      for (final item in [...flat, ...grouped]) {
        final id = item.id;
        if (id != null && id.isNotEmpty) {
          merged[id] = item;
        }
      }
      var items = merged.values.toList();

      // Client-side search filter.
      if (search != null && search.trim().isNotEmpty) {
        final keyword = search.trim().toLowerCase();
        items = items
            .where(
              (c) =>
                  (c.name ?? '').toLowerCase().contains(keyword) ||
                  (c.description ?? '').toLowerCase().contains(keyword),
            )
            .toList();
      }

      return items;
    } on DioException catch (e) {
      throw Exception(
        _mapDioError(e, defaultMessage: 'Không thể lấy danh sách danh mục.'),
      );
    }
  }

  Future<List<CategorySummaryResponse>> _getGroupedFlatCategories({
    ProductType? type,
  }) async {
    final groupedRes = await _categoryApi.apiCategoriesGetCategoriesGroupedGet(
      supportedProductType: type,
    );
    final groupedData = groupedRes.data;
    final groupedList = <CategorySummaryResponse>[];
    if (groupedData?.success == true && groupedData?.data != null) {
      for (final group in groupedData!.data!) {
        if (group.categories != null) {
          groupedList.addAll(group.categories!.toList());
        }
      }
    }
    return groupedList;
  }

  Future<List<CategorySummaryResponse>> _getFlatCategories({
    ProductType? type,
    int pageNumber = 1,
    int pageSize = 50,
  }) async {
    // Use raw Dio + manual JSON parse to be resilient against built_value
    // serializer crashes when the server returns unexpected/new fields.
    final dio = ApiClient.dio;
    final all = <CategorySummaryResponse>[];
    var currentPage = pageNumber;

    for (var i = 0; i < 20; i++) {
      final queryParams = <String, dynamic>{
        'PageNumber': currentPage,
        'PageSize': pageSize,
        '_': DateTime.now().millisecondsSinceEpoch,
        if (type != null) 'Type': type.name,
      };

      final res = await dio.get<dynamic>(
        '/api/categories/get-categories',
        queryParameters: queryParams,
      );

      final body = res.data;
      if (body is! Map<String, dynamic> || body['success'] != true) {
        throw Exception('Không thể lấy danh sách danh mục từ API admin.');
      }

      final rawList = _extractCategoryList(body);
      if (rawList != null && rawList.isNotEmpty) {
        all.addAll(
          rawList.whereType<Map<String, dynamic>>().map(_mapToSummary),
        );
      }

      final hasNext = _extractHasNext(body);
      if (hasNext != true) {
        break;
      }

      currentPage += 1;
    }

    return all;
  }

  List<dynamic>? _extractCategoryList(Map<String, dynamic> body) {
    final data = body['data'];

    // Shape A: { success, data: [ ... ] }
    if (data is List) {
      return data;
    }

    // Shape B: { success, data: { data: [ ... ], metadata: {...} } }
    if (data is Map<String, dynamic>) {
      final nested = data['data'];
      if (nested is List) {
        return nested;
      }
    }

    return null;
  }

  bool? _extractHasNext(Map<String, dynamic> body) {
    dynamic metadata = body['metadata'];
    final data = body['data'];
    if (metadata is! Map<String, dynamic> && data is Map<String, dynamic>) {
      metadata = data['metadata'];
    }

    if (metadata is Map<String, dynamic>) {
      final hasNext = metadata['hasNext'] ?? metadata['HasNext'];
      if (hasNext is bool) return hasNext;
    }

    return null;
  }

  CategorySummaryResponse _mapToSummary(Map<String, dynamic> json) {
    String? getString(String camel, [String? pascal]) {
      final value = json[camel] ?? (pascal != null ? json[pascal] : null);
      return value is String ? value : null;
    }

    return CategorySummaryResponse(
      (b) => b
        ..id = getString('id', 'Id')
        ..name = getString('name', 'Name')
        ..description = getString('description', 'Description')
        ..imageUrl = getString('imageUrl', 'ImageUrl')
        ..supportedProductType = _parseProductType(
          json['supportedProductType'] ?? json['SupportedProductType'],
        )
        ..parentCategoryId = getString('parentCategoryId', 'ParentCategoryId')
        ..parentCategoryName = getString(
          'parentCategoryName',
          'ParentCategoryName',
        ),
    );
  }

  ProductType? _parseProductType(dynamic value) {
    if (value == null) return null;
    final str = value.toString().toLowerCase();
    switch (str) {
      case 'component':
        return ProductType.component;
      case 'basebox':
        return ProductType.baseBox;
      case 'giftset':
        return ProductType.giftSet;
      default:
        return ProductType.component;
    }
  }

  Future<CategoryResponse?> getCategoryById(String id) async {
    try {
      final res = await _categoryApi.apiCategoriesGetCategoryIdGet(id: id);
      final data = res.data;
      if (data?.success == true) {
        return data?.data;
      }
      throw Exception(data?.message ?? 'Không thể lấy thông tin danh mục');
    } on DioException catch (e) {
      throw Exception(
        _mapDioError(e, defaultMessage: 'Không thể lấy thông tin danh mục.'),
      );
    }
  }

  Future<void> createCategory({
    required String name,
    String? description,
    String? imageUrl,
    required ProductType supportedProductType,
    String? parentCategoryId,
  }) async {
    try {
      final cmd = CreateCategoryCommand(
        (b) => b
          ..name = name.trim()
          ..description = (description != null && description.trim().isNotEmpty)
              ? description.trim()
              : null
          ..imageUrl = (imageUrl != null && imageUrl.trim().isNotEmpty)
              ? imageUrl.trim()
              : null
          ..supportedProductType = supportedProductType
          ..parentCategoryId =
              (parentCategoryId != null && parentCategoryId.trim().isNotEmpty)
              ? parentCategoryId.trim()
              : null,
      );

      final res = await _categoryApi.apiCategoriesCreateCategoryPost(
        createCategoryCommand: cmd,
      );
      final data = res.data;
      if (data?.success == true) {
        return;
      }
      throw Exception(data?.message ?? 'Tạo danh mục thất bại');
    } on DioException catch (e) {
      throw Exception(
        _mapDioError(e, defaultMessage: 'Tạo danh mục thất bại.'),
      );
    }
  }

  Future<void> updateCategory({
    required String id,
    required String name,
    String? description,
    String? imageUrl,
    required ProductType supportedProductType,
    String? parentCategoryId,
  }) async {
    try {
      final cmd = UpdateCategoryCommand(
        (b) => b
          ..id = id
          ..name = name.trim()
          ..description = (description != null && description.trim().isNotEmpty)
              ? description.trim()
              : null
          ..imageUrl = (imageUrl != null && imageUrl.trim().isNotEmpty)
              ? imageUrl.trim()
              : null
          ..supportedProductType = supportedProductType
          ..parentCategoryId =
              (parentCategoryId != null && parentCategoryId.trim().isNotEmpty)
              ? parentCategoryId.trim()
              : null,
      );

      final res = await _categoryApi.apiCategoriesUpdateCategoryIdPut(
        id: id,
        updateCategoryCommand: cmd,
      );
      final data = res.data;
      if (data?.success == true) return;
      throw Exception(data?.message ?? 'Cập nhật danh mục thất bại');
    } on DioException catch (e) {
      // Backend update is consistently failing with 500. As a workaround to keep
      // CRUD usable, fall back to delete + create with the edited fields.
      if (e.response?.statusCode == 500) {
        try {
          await deleteCategory(id);
          await createCategory(
            name: name,
            description: description,
            imageUrl: imageUrl,
            supportedProductType: supportedProductType,
            parentCategoryId: parentCategoryId,
          );
          return;
        } catch (_) {
          // If workaround fails, surface original update error.
        }
      }
      throw Exception(
        _mapDioError(e, defaultMessage: 'Cập nhật danh mục thất bại.'),
      );
    }
  }

  Future<void> deleteCategory(String id) async {
    try {
      final res = await _categoryApi.apiCategoriesDeleteCategoryIdDelete(
        id: id,
      );
      final data = res.data;
      if (data?.success == true) return;
      throw Exception(data?.message ?? 'Xóa danh mục thất bại');
    } on DioException catch (e) {
      throw Exception(
        _mapDioError(e, defaultMessage: 'Xóa danh mục thất bại.'),
      );
    }
  }

  String _mapDioError(DioException e, {required String defaultMessage}) {
    final status = e.response?.statusCode;
    final apiMessage = _extractApiMessage(e.response?.data);
    final method = e.requestOptions.method;
    final path = e.requestOptions.path;

    String? withContext(String message) {
      if (method.isEmpty || path.isEmpty) return message;
      return '$message ($method $path)';
    }

    if (status == 400) {
      return apiMessage ??
          withContext('Dữ liệu không hợp lệ. Vui lòng kiểm tra lại.')!;
    }
    if (status == 403) {
      return withContext(
        'Bạn không có quyền admin để thực hiện thao tác này.',
      )!;
    }
    if (status == 404) {
      return apiMessage ??
          withContext('Không tìm thấy danh mục trong nguồn dữ liệu admin.')!;
    }
    if (status == 500) {
      return apiMessage ??
          withContext(
            'Máy chủ đang lỗi khi xử lý danh mục. Vui lòng thử lại sau.',
          )!;
    }

    return apiMessage ?? withContext(defaultMessage) ?? defaultMessage;
  }

  String? _extractApiMessage(dynamic data) {
    if (data is String) {
      final text = data.trim();
      return text.isNotEmpty ? text : null;
    }
    if (data is Map<String, dynamic>) {
      final message = data['message'];
      if (message is String && message.trim().isNotEmpty) {
        return message;
      }

      final description = data['description'];
      if (description is String && description.trim().isNotEmpty) {
        return description;
      }

      final title = data['title'];
      if (title is String && title.trim().isNotEmpty) {
        return title;
      }

      final code = data['code'];
      if (code is String && code.trim().isNotEmpty) {
        return code;
      }

      final error = data['error'];
      if (error is Map<String, dynamic>) {
        final errorMessage = error['message'];
        if (errorMessage is String && errorMessage.trim().isNotEmpty) {
          return errorMessage;
        }
      }
    }
    return null;
  }
}
