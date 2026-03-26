//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:management_openapi/src/api_util.dart';
import 'package:management_openapi/src/model/api_failure_response.dart';
import 'package:management_openapi/src/model/boolean_api_success_response.dart';
import 'package:management_openapi/src/model/gift_set_item.dart';
import 'package:management_openapi/src/model/image_gift.dart';
import 'package:management_openapi/src/model/product_detail_response_api_success_response.dart';
import 'package:management_openapi/src/model/product_list_response_paged_result_api_success_response.dart';
import 'package:management_openapi/src/model/product_type.dart';
import 'package:management_openapi/src/model/string_api_success_response.dart';
import 'package:management_openapi/src/model/string_i_enumerable_api_success_response.dart';
import 'package:management_openapi/src/model/theme_collection_response_i_enumerable_api_success_response.dart';

class ProductApi {

  final Dio _dio;

  final Serializers _serializers;

  const ProductApi(this._dio, this._serializers);

  /// apiProductsCreateProductPost
  /// 
  ///
  /// Parameters:
  /// * [name] 
  /// * [SKU] 
  /// * [price] 
  /// * [description] 
  /// * [productType] 
  /// * [categoryId] 
  /// * [themeCollectionId] 
  /// * [images] 
  /// * [model3DUrl] 
  /// * [stockQuantity] 
  /// * [lowStockThreshold] 
  /// * [material] 
  /// * [color] 
  /// * [theme] 
  /// * [weight] 
  /// * [physicalLength] 
  /// * [physicalWidth] 
  /// * [physicalHeight] 
  /// * [innerLength] 
  /// * [innerWidth] 
  /// * [innerHeight] 
  /// * [outerLength] 
  /// * [outerWidth] 
  /// * [outerHeight] 
  /// * [baseBoxId] 
  /// * [giftSetItems] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProductDetailResponseApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProductDetailResponseApiSuccessResponse>> apiProductsCreateProductPost({ 
    String? name,
    String? SKU,
    double? price,
    String? description,
    ProductType? productType,
    String? categoryId,
    String? themeCollectionId,
    BuiltList<ImageGift>? images,
    String? model3DUrl,
    int? stockQuantity,
    int? lowStockThreshold,
    String? material,
    String? color,
    String? theme,
    double? weight,
    double? physicalLength,
    double? physicalWidth,
    double? physicalHeight,
    double? innerLength,
    double? innerWidth,
    double? innerHeight,
    double? outerLength,
    double? outerWidth,
    double? outerHeight,
    String? baseBoxId,
    BuiltList<GiftSetItem>? giftSetItems,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/create-product';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (name != null) r'Name': encodeFormParameter(_serializers, name, const FullType(String)),
        if (SKU != null) r'SKU': encodeFormParameter(_serializers, SKU, const FullType(String)),
        if (price != null) r'Price': encodeFormParameter(_serializers, price, const FullType(double)),
        if (description != null) r'Description': encodeFormParameter(_serializers, description, const FullType(String)),
        if (productType != null) r'ProductType': encodeFormParameter(_serializers, productType, const FullType(ProductType)),
        if (categoryId != null) r'CategoryId': encodeFormParameter(_serializers, categoryId, const FullType(String)),
        if (themeCollectionId != null) r'ThemeCollectionId': encodeFormParameter(_serializers, themeCollectionId, const FullType(String)),
        if (images != null) r'Images': encodeFormParameter(_serializers, images, const FullType(BuiltList, [FullType(ImageGift)])),
        if (model3DUrl != null) r'Model3DUrl': encodeFormParameter(_serializers, model3DUrl, const FullType(String)),
        if (stockQuantity != null) r'StockQuantity': encodeFormParameter(_serializers, stockQuantity, const FullType(int)),
        if (lowStockThreshold != null) r'LowStockThreshold': encodeFormParameter(_serializers, lowStockThreshold, const FullType(int)),
        if (material != null) r'Material': encodeFormParameter(_serializers, material, const FullType(String)),
        if (color != null) r'Color': encodeFormParameter(_serializers, color, const FullType(String)),
        if (theme != null) r'Theme': encodeFormParameter(_serializers, theme, const FullType(String)),
        if (weight != null) r'Weight': encodeFormParameter(_serializers, weight, const FullType(double)),
        if (physicalLength != null) r'Physical_Length': encodeFormParameter(_serializers, physicalLength, const FullType(double)),
        if (physicalWidth != null) r'Physical_Width': encodeFormParameter(_serializers, physicalWidth, const FullType(double)),
        if (physicalHeight != null) r'Physical_Height': encodeFormParameter(_serializers, physicalHeight, const FullType(double)),
        if (innerLength != null) r'Inner_Length': encodeFormParameter(_serializers, innerLength, const FullType(double)),
        if (innerWidth != null) r'Inner_Width': encodeFormParameter(_serializers, innerWidth, const FullType(double)),
        if (innerHeight != null) r'Inner_Height': encodeFormParameter(_serializers, innerHeight, const FullType(double)),
        if (outerLength != null) r'Outer_Length': encodeFormParameter(_serializers, outerLength, const FullType(double)),
        if (outerWidth != null) r'Outer_Width': encodeFormParameter(_serializers, outerWidth, const FullType(double)),
        if (outerHeight != null) r'Outer_Height': encodeFormParameter(_serializers, outerHeight, const FullType(double)),
        if (baseBoxId != null) r'BaseBoxId': encodeFormParameter(_serializers, baseBoxId, const FullType(String)),
        if (giftSetItems != null) r'GiftSetItems': encodeFormParameter(_serializers, giftSetItems, const FullType(BuiltList, [FullType(GiftSetItem)])),
      });

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProductDetailResponseApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ProductDetailResponseApiSuccessResponse),
      ) as ProductDetailResponseApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProductDetailResponseApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsDeleteProductIdDelete
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BooleanApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BooleanApiSuccessResponse>> apiProductsDeleteProductIdDelete({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/delete-product/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BooleanApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BooleanApiSuccessResponse),
      ) as BooleanApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BooleanApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetAvailableTagsCategoryIdGet
  /// 
  ///
  /// Parameters:
  /// * [categoryId] 
  /// * [search] 
  /// * [pageNumber] 
  /// * [pageSize] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [StringIEnumerableApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<StringIEnumerableApiSuccessResponse>> apiProductsGetAvailableTagsCategoryIdGet({ 
    required String categoryId,
    String? search,
    int? pageNumber = 1,
    int? pageSize = 6,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-available-tags/{categoryId}'.replaceAll('{' r'categoryId' '}', encodeQueryParameter(_serializers, categoryId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (pageNumber != null) r'pageNumber': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (pageSize != null) r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    StringIEnumerableApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(StringIEnumerableApiSuccessResponse),
      ) as StringIEnumerableApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<StringIEnumerableApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetAvailableThemesGet
  /// 
  ///
  /// Parameters:
  /// * [search] 
  /// * [pageNumber] 
  /// * [pageSize] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ThemeCollectionResponseIEnumerableApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ThemeCollectionResponseIEnumerableApiSuccessResponse>> apiProductsGetAvailableThemesGet({ 
    String? search,
    int? pageNumber = 1,
    int? pageSize = 6,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-available-themes';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (pageNumber != null) r'pageNumber': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (pageSize != null) r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ThemeCollectionResponseIEnumerableApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ThemeCollectionResponseIEnumerableApiSuccessResponse),
      ) as ThemeCollectionResponseIEnumerableApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ThemeCollectionResponseIEnumerableApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetDeletedProductsGet
  /// 
  ///
  /// Parameters:
  /// * [type] 
  /// * [categoryId] 
  /// * [search] 
  /// * [sortBy] 
  /// * [sortDescending] 
  /// * [pageNumber] 
  /// * [pageSize] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProductListResponsePagedResultApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProductListResponsePagedResultApiSuccessResponse>> apiProductsGetDeletedProductsGet({ 
    ProductType? type,
    String? categoryId,
    String? search,
    String? sortBy,
    bool? sortDescending,
    int? pageNumber,
    int? pageSize,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-deleted-products';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (type != null) r'Type': encodeQueryParameter(_serializers, type, const FullType(ProductType)),
      if (categoryId != null) r'CategoryId': encodeQueryParameter(_serializers, categoryId, const FullType(String)),
      if (search != null) r'Search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (sortBy != null) r'SortBy': encodeQueryParameter(_serializers, sortBy, const FullType(String)),
      if (sortDescending != null) r'SortDescending': encodeQueryParameter(_serializers, sortDescending, const FullType(bool)),
      if (pageNumber != null) r'PageNumber': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (pageSize != null) r'PageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProductListResponsePagedResultApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ProductListResponsePagedResultApiSuccessResponse),
      ) as ProductListResponsePagedResultApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProductListResponsePagedResultApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetProductDetailIdGet
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProductDetailResponseApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProductDetailResponseApiSuccessResponse>> apiProductsGetProductDetailIdGet({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-product-detail/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProductDetailResponseApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ProductDetailResponseApiSuccessResponse),
      ) as ProductDetailResponseApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProductDetailResponseApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetProductListGet
  /// 
  ///
  /// Parameters:
  /// * [type] 
  /// * [categoryId] 
  /// * [search] 
  /// * [sortBy] 
  /// * [sortDescending] 
  /// * [pageNumber] 
  /// * [pageSize] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProductListResponsePagedResultApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProductListResponsePagedResultApiSuccessResponse>> apiProductsGetProductListGet({ 
    ProductType? type,
    String? categoryId,
    String? search,
    String? sortBy,
    bool? sortDescending,
    int? pageNumber,
    int? pageSize,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-product-list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (type != null) r'Type': encodeQueryParameter(_serializers, type, const FullType(ProductType)),
      if (categoryId != null) r'CategoryId': encodeQueryParameter(_serializers, categoryId, const FullType(String)),
      if (search != null) r'Search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (sortBy != null) r'SortBy': encodeQueryParameter(_serializers, sortBy, const FullType(String)),
      if (sortDescending != null) r'SortDescending': encodeQueryParameter(_serializers, sortDescending, const FullType(bool)),
      if (pageNumber != null) r'PageNumber': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (pageSize != null) r'PageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProductListResponsePagedResultApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ProductListResponsePagedResultApiSuccessResponse),
      ) as ProductListResponsePagedResultApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProductListResponsePagedResultApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsPermanentDeleteProductIdDelete
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BooleanApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BooleanApiSuccessResponse>> apiProductsPermanentDeleteProductIdDelete({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/permanent-delete-product/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BooleanApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BooleanApiSuccessResponse),
      ) as BooleanApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BooleanApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsRestoreProductIdPut
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BooleanApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BooleanApiSuccessResponse>> apiProductsRestoreProductIdPut({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/restore-product/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BooleanApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BooleanApiSuccessResponse),
      ) as BooleanApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BooleanApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsUpdateProductIdPut
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [id2] 
  /// * [name] 
  /// * [SKU] 
  /// * [price] 
  /// * [description] 
  /// * [productType] 
  /// * [categoryId] 
  /// * [themeCollectionId] 
  /// * [images] 
  /// * [model3DUrl] 
  /// * [stockQuantity] 
  /// * [lowStockThreshold] 
  /// * [material] 
  /// * [color] 
  /// * [theme] 
  /// * [weight] 
  /// * [physicalLength] 
  /// * [physicalWidth] 
  /// * [physicalHeight] 
  /// * [innerLength] 
  /// * [innerWidth] 
  /// * [innerHeight] 
  /// * [outerLength] 
  /// * [outerWidth] 
  /// * [outerHeight] 
  /// * [baseBoxId] 
  /// * [giftSetItems] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProductDetailResponseApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProductDetailResponseApiSuccessResponse>> apiProductsUpdateProductIdPut({ 
    required String id,
    String? id2,
    String? name,
    String? SKU,
    double? price,
    String? description,
    ProductType? productType,
    String? categoryId,
    String? themeCollectionId,
    BuiltList<ImageGift>? images,
    String? model3DUrl,
    int? stockQuantity,
    int? lowStockThreshold,
    String? material,
    String? color,
    String? theme,
    double? weight,
    double? physicalLength,
    double? physicalWidth,
    double? physicalHeight,
    double? innerLength,
    double? innerWidth,
    double? innerHeight,
    double? outerLength,
    double? outerWidth,
    double? outerHeight,
    String? baseBoxId,
    BuiltList<GiftSetItem>? giftSetItems,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/update-product/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (id2 != null) r'Id': encodeFormParameter(_serializers, id2, const FullType(String)),
        if (name != null) r'Name': encodeFormParameter(_serializers, name, const FullType(String)),
        if (SKU != null) r'SKU': encodeFormParameter(_serializers, SKU, const FullType(String)),
        if (price != null) r'Price': encodeFormParameter(_serializers, price, const FullType(double)),
        if (description != null) r'Description': encodeFormParameter(_serializers, description, const FullType(String)),
        if (productType != null) r'ProductType': encodeFormParameter(_serializers, productType, const FullType(ProductType)),
        if (categoryId != null) r'CategoryId': encodeFormParameter(_serializers, categoryId, const FullType(String)),
        if (themeCollectionId != null) r'ThemeCollectionId': encodeFormParameter(_serializers, themeCollectionId, const FullType(String)),
        if (images != null) r'Images': encodeFormParameter(_serializers, images, const FullType(BuiltList, [FullType(ImageGift)])),
        if (model3DUrl != null) r'Model3DUrl': encodeFormParameter(_serializers, model3DUrl, const FullType(String)),
        if (stockQuantity != null) r'StockQuantity': encodeFormParameter(_serializers, stockQuantity, const FullType(int)),
        if (lowStockThreshold != null) r'LowStockThreshold': encodeFormParameter(_serializers, lowStockThreshold, const FullType(int)),
        if (material != null) r'Material': encodeFormParameter(_serializers, material, const FullType(String)),
        if (color != null) r'Color': encodeFormParameter(_serializers, color, const FullType(String)),
        if (theme != null) r'Theme': encodeFormParameter(_serializers, theme, const FullType(String)),
        if (weight != null) r'Weight': encodeFormParameter(_serializers, weight, const FullType(double)),
        if (physicalLength != null) r'Physical_Length': encodeFormParameter(_serializers, physicalLength, const FullType(double)),
        if (physicalWidth != null) r'Physical_Width': encodeFormParameter(_serializers, physicalWidth, const FullType(double)),
        if (physicalHeight != null) r'Physical_Height': encodeFormParameter(_serializers, physicalHeight, const FullType(double)),
        if (innerLength != null) r'Inner_Length': encodeFormParameter(_serializers, innerLength, const FullType(double)),
        if (innerWidth != null) r'Inner_Width': encodeFormParameter(_serializers, innerWidth, const FullType(double)),
        if (innerHeight != null) r'Inner_Height': encodeFormParameter(_serializers, innerHeight, const FullType(double)),
        if (outerLength != null) r'Outer_Length': encodeFormParameter(_serializers, outerLength, const FullType(double)),
        if (outerWidth != null) r'Outer_Width': encodeFormParameter(_serializers, outerWidth, const FullType(double)),
        if (outerHeight != null) r'Outer_Height': encodeFormParameter(_serializers, outerHeight, const FullType(double)),
        if (baseBoxId != null) r'BaseBoxId': encodeFormParameter(_serializers, baseBoxId, const FullType(String)),
        if (giftSetItems != null) r'GiftSetItems': encodeFormParameter(_serializers, giftSetItems, const FullType(BuiltList, [FullType(GiftSetItem)])),
      });

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProductDetailResponseApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ProductDetailResponseApiSuccessResponse),
      ) as ProductDetailResponseApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProductDetailResponseApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsUploadImagePost
  /// 
  ///
  /// Parameters:
  /// * [file] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [StringApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<StringApiSuccessResponse>> apiProductsUploadImagePost({ 
    MultipartFile? file,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/upload-image';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (file != null) r'file': file,
      });

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    StringApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(StringApiSuccessResponse),
      ) as StringApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<StringApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
