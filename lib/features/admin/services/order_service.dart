import 'package:dio/dio.dart';
import 'package:prm_project/core/api/api_client.dart';
import 'package:public_openapi/public_openapi.dart';

const bool _enableMockOrdersOnFetchFailure = false;

class OrderPageResult {
  final List<AdminOrder> orders;
  final PaginationMetadata? metadata;

  const OrderPageResult({required this.orders, required this.metadata});
}

class AdminOrderItem {
  final String productId;
  final String productName;
  final String productImage;
  final int quantity;
  final double unitPrice;
  final bool hasFeedback;

  const AdminOrderItem({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.quantity,
    required this.unitPrice,
    required this.hasFeedback,
  });
}

class AdminOrder {
  final String id;
  final String userId;
  final String receiverName;
  final String receiverPhone;
  final double totalAmount;
  final String shippingAddress;
  final OrderStatus status;
  final PaymentMethod? paymentMethod;
  final DateTime? createdAt;
  final List<AdminOrderItem> items;

  const AdminOrder({
    required this.id,
    required this.userId,
    required this.receiverName,
    required this.receiverPhone,
    required this.totalAmount,
    required this.shippingAddress,
    required this.status,
    required this.paymentMethod,
    required this.createdAt,
    required this.items,
  });
}

class OrderService {
  final OrderApi _orderApi;

  OrderService({OrderApi? orderApi})
    : _orderApi = orderApi ?? ApiClient.openApi.getOrderApi();

  Future<OrderPageResult> getOrders({
    int pageNumber = 1,
    int pageSize = 20,
    String? search,
    String? sortBy,
    bool? sortDescending,
  }) async {
    try {
      final response = await ApiClient.dio.get(
        '/api/orders/get-all-orders',
        queryParameters: {
          'PageNumber': pageNumber,
          'PageSize': pageSize,
          '_': DateTime.now().millisecondsSinceEpoch,
          if (search != null && search.trim().isNotEmpty) 'Search': search,
          if (sortBy != null && sortBy.trim().isNotEmpty) 'SortBy': sortBy,
          if (sortDescending != null) 'SortDescending': sortDescending,
        },
        options: Options(headers: {'Accept': 'application/json'}),
      );

      final body = response.data;
      if (body is! Map<String, dynamic>) {
        throw Exception('Dữ liệu trả về không hợp lệ');
      }

      final success = body['success'] == true;
      if (!success) {
        throw Exception(
          body['message']?.toString() ?? 'Không thể lấy danh sách đơn hàng',
        );
      }

      final payload = body['data'];

      // OpenAPI: successResponse.data is OrderListResponsePagedResult { data: [..], metadata: {...} }
      // Some backends may also attach metadata at root: successResponse.metadata.
      final dataMap = payload is Map<String, dynamic>
          ? payload
          : <String, dynamic>{};

      dynamic rows = dataMap['data'];
      if (rows is! List) {
        // Fallbacks if server returns a direct list or uses a different key.
        rows = payload is List ? payload : dataMap['items'];
      }

      final orders = rows is List
          ? rows
                .whereType<Map>()
                .map((e) => _mapOrder(Map<String, dynamic>.from(e)))
                .toList()
          : const <AdminOrder>[];

      final metadata =
          _mapMetadata(body['metadata']) ?? _mapMetadata(dataMap['metadata']);

      return OrderPageResult(orders: orders, metadata: metadata);
    } on DioException catch (e) {
      if (_enableMockOrdersOnFetchFailure) {
        return _buildMockOrdersPage(
          pageNumber: pageNumber,
          pageSize: pageSize,
          search: search,
        );
      }

      throw Exception(
        _mapDioError(e, defaultMessage: 'Không thể lấy danh sách đơn hàng.'),
      );
    }
  }

  OrderPageResult _buildMockOrdersPage({
    required int pageNumber,
    required int pageSize,
    String? search,
  }) {
    final all = <AdminOrder>[
      AdminOrder(
        id: '11111111-1111-1111-1111-111111111111',
        userId: 'u-1001',
        receiverName: 'Nguyen Van A',
        receiverPhone: '0901000001',
        totalAmount: 450000,
        shippingAddress: '123 Le Loi, Q1, TP.HCM',
        status: OrderStatus.delivered,
        paymentMethod: PaymentMethod.COD,
        createdAt: DateTime.now().subtract(const Duration(days: 2)),
        items: const [
          AdminOrderItem(
            productId: 'p-01',
            productName: 'Moc khoa game',
            productImage: '',
            quantity: 1,
            unitPrice: 450000,
            hasFeedback: false,
          ),
        ],
      ),
      AdminOrder(
        id: '22222222-2222-2222-2222-222222222222',
        userId: 'u-1002',
        receiverName: 'Tran Thi B',
        receiverPhone: '0902000002',
        totalAmount: 780000,
        shippingAddress: '45 Hai Ba Trung, Q3, TP.HCM',
        status: OrderStatus.paid,
        paymentMethod: PaymentMethod.momo,
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
        items: const [
          AdminOrderItem(
            productId: 'p-02',
            productName: 'Set qua sinh nhat',
            productImage: '',
            quantity: 1,
            unitPrice: 780000,
            hasFeedback: false,
          ),
        ],
      ),
      AdminOrder(
        id: '33333333-3333-3333-3333-333333333333',
        userId: 'u-1003',
        receiverName: 'Le Van C',
        receiverPhone: '0903000003',
        totalAmount: 1250000,
        shippingAddress: '88 Nguyen Hue, Q1, TP.HCM',
        status: OrderStatus.processing,
        paymentMethod: PaymentMethod.vNPay,
        createdAt: DateTime.now().subtract(const Duration(hours: 18)),
        items: const [
          AdminOrderItem(
            productId: 'p-03',
            productName: 'Mo hinh xe mini',
            productImage: '',
            quantity: 2,
            unitPrice: 625000,
            hasFeedback: false,
          ),
        ],
      ),
      AdminOrder(
        id: '44444444-4444-4444-4444-444444444444',
        userId: 'u-1004',
        receiverName: 'Pham Thi D',
        receiverPhone: '0904000004',
        totalAmount: 990000,
        shippingAddress: '12 Vo Van Tan, Q3, TP.HCM',
        status: OrderStatus.cancelled,
        paymentMethod: PaymentMethod.bankTransfer,
        createdAt: DateTime.now().subtract(const Duration(hours: 8)),
        items: const [
          AdminOrderItem(
            productId: 'p-04',
            productName: 'Hop qua me va be',
            productImage: '',
            quantity: 1,
            unitPrice: 990000,
            hasFeedback: false,
          ),
        ],
      ),
      AdminOrder(
        id: '55555555-5555-5555-5555-555555555555',
        userId: 'u-1005',
        receiverName: 'Hoang Van E',
        receiverPhone: '0905000005',
        totalAmount: 560000,
        shippingAddress: '99 Cach Mang Thang 8, Q10, TP.HCM',
        status: OrderStatus.failed,
        paymentMethod: PaymentMethod.creditCard,
        createdAt: DateTime.now().subtract(const Duration(hours: 3)),
        items: const [
          AdminOrderItem(
            productId: 'p-05',
            productName: 'Combo phu kien',
            productImage: '',
            quantity: 1,
            unitPrice: 560000,
            hasFeedback: false,
          ),
        ],
      ),
    ];

    final keyword = search?.trim().toLowerCase();
    final filtered = keyword == null || keyword.isEmpty
        ? all
        : all.where((o) {
            final name = o.receiverName?.toLowerCase() ?? '';
            final phone = o.receiverPhone?.toLowerCase() ?? '';
            final address = o.shippingAddress?.toLowerCase() ?? '';
            return name.contains(keyword) ||
                phone.contains(keyword) ||
                address.contains(keyword);
          }).toList();

    final start = (pageNumber - 1) * pageSize;
    final end = (start + pageSize) > filtered.length
        ? filtered.length
        : (start + pageSize);

    final pageData = start >= filtered.length
        ? const <AdminOrder>[]
        : filtered.sublist(start, end);

    return OrderPageResult(
      orders: pageData,
      metadata: PaginationMetadata(
        (b) => b
          ..currentPage = pageNumber
          ..pageSize = pageSize
          ..totalCount = filtered.length
          ..totalPages = (filtered.length / pageSize).ceil()
          ..hasNext = end < filtered.length
          ..hasPrevious = pageNumber > 1,
      ),
    );
  }

  AdminOrder _mapOrder(Map<String, dynamic> json) {
    final rawItems = json['items'];
    final items = rawItems is List
        ? rawItems
              .whereType<Map>()
              .map((e) => _mapOrderItem(Map<String, dynamic>.from(e)))
              .toList()
        : const <AdminOrderItem>[];

    return AdminOrder(
      id: json['id']?.toString() ?? '',
      userId: json['userId']?.toString() ?? '',
      receiverName: json['receiverName']?.toString() ?? '',
      receiverPhone: json['receiverPhone']?.toString() ?? '',
      totalAmount: _asDouble(json['totalAmount']),
      shippingAddress: json['shippingAddress']?.toString() ?? '',
      status: _parseOrderStatus(json['status']?.toString()),
      paymentMethod: _parsePaymentMethod(json['paymentMethod']?.toString()),
      createdAt: DateTime.tryParse(json['createdAt']?.toString() ?? ''),
      items: items,
    );
  }

  AdminOrderItem _mapOrderItem(Map<String, dynamic> json) {
    return AdminOrderItem(
      productId: json['productId']?.toString() ?? '',
      productName: json['productName']?.toString() ?? '',
      productImage: json['productImage']?.toString() ?? '',
      quantity: _asInt(json['quantity']),
      unitPrice: _asDouble(json['unitPrice']),
      hasFeedback: json['hasFeedback'] == true,
    );
  }

  PaginationMetadata? _mapMetadata(dynamic raw) {
    if (raw is! Map<String, dynamic>) return null;
    return PaginationMetadata(
      (b) => b
        ..currentPage = _asInt(raw['currentPage'])
        ..pageSize = _asInt(raw['pageSize'])
        ..totalCount = _asInt(raw['totalCount'])
        ..totalPages = _asInt(raw['totalPages'])
        ..hasNext = raw['hasNext'] == true
        ..hasPrevious = raw['hasPrevious'] == true,
    );
  }

  int _asInt(dynamic value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    return int.tryParse(value?.toString() ?? '') ?? 0;
  }

  double _asDouble(dynamic value) {
    if (value is double) return value;
    if (value is num) return value.toDouble();
    return double.tryParse(value?.toString() ?? '') ?? 0;
  }

  OrderStatus _parseOrderStatus(String? value) {
    switch (value?.trim().toLowerCase()) {
      case 'pendingpayment':
        return OrderStatus.pendingPayment;
      case 'paid':
        return OrderStatus.paid;
      case 'processing':
        return OrderStatus.processing;
      case 'shipped':
        return OrderStatus.shipped;
      case 'delivered':
        return OrderStatus.delivered;
      case 'cancelled':
        return OrderStatus.cancelled;
      case 'refunded':
        return OrderStatus.refunded;
      case 'failed':
        return OrderStatus.failed;
      default:
        return OrderStatus.pendingPayment;
    }
  }

  PaymentMethod? _parsePaymentMethod(String? value) {
    switch (value?.trim().toLowerCase()) {
      case 'cod':
        return PaymentMethod.COD;
      case 'momo':
        return PaymentMethod.momo;
      case 'vnpay':
        return PaymentMethod.vNPay;
      case 'banktransfer':
        return PaymentMethod.bankTransfer;
      case 'creditcard':
        return PaymentMethod.creditCard;
      default:
        return null;
    }
  }

  Future<void> updateOrderStatus({
    required String id,
    required OrderStatus status,
  }) async {
    try {
      final dio = ApiClient.dio;
      final statusValue = _toApiOrderStatus(status);

      final response = await dio.put(
        '/api/orders/$id/status',
        data: {'status': statusValue},
        options: Options(
          contentType: 'application/json',
          headers: {'Accept': 'application/json'},
        ),
      );

      // Handle response
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        if (data['success'] == true) return;
        throw Exception(
          data['message'] ?? 'Cập nhật trạng thái đơn hàng thất bại',
        );
      }

      throw Exception(
        'Cập nhật trạng thái đơn hàng thất bại (HTTP ${response.statusCode})',
      );
    } on DioException catch (e) {
      throw Exception(
        _mapDioError(
          e,
          defaultMessage: 'Cập nhật trạng thái đơn hàng thất bại.',
        ),
      );
    }
  }

  String _toApiOrderStatus(OrderStatus status) {
    switch (status) {
      case OrderStatus.pendingPayment:
        return 'PendingPayment';
      case OrderStatus.paid:
        return 'Paid';
      case OrderStatus.processing:
        return 'Processing';
      case OrderStatus.shipped:
        return 'Shipped';
      case OrderStatus.delivered:
        return 'Delivered';
      case OrderStatus.cancelled:
        return 'Cancelled';
      case OrderStatus.refunded:
        return 'Refunded';
      case OrderStatus.failed:
        return 'Failed';
    }

    throw ArgumentError('Unsupported order status: $status');
  }

  String _mapDioError(DioException e, {required String defaultMessage}) {
    final status = e.response?.statusCode;
    final apiMessage = _extractApiMessage(e.response?.data);
    final method = e.requestOptions.method;
    final path = e.requestOptions.path;

    String withContext(String message) {
      if (method.isEmpty || path.isEmpty) return message;
      return '$message ($method $path)';
    }

    if (status == 400) {
      return apiMessage ??
          withContext('Dữ liệu không hợp lệ. Vui lòng kiểm tra lại.');
    }
    if (status == 401) {
      return withContext('Phiên đăng nhập đã hết hạn. Vui lòng đăng nhập lại.');
    }
    if (status == 403) {
      return withContext('Bạn không có quyền admin để thực hiện thao tác này.');
    }
    if (status == 404) {
      return apiMessage ?? withContext('Không tìm thấy đơn hàng.');
    }
    if (status == 500) {
      return apiMessage ??
          withContext(
            'Máy chủ đang lỗi khi xử lý đơn hàng. Vui lòng thử lại sau.',
          );
    }

    // Unknown status code
    if (status != null) {
      return '$defaultMessage (HTTP $status)';
    }

    // Connection error
    return apiMessage ?? defaultMessage;
  }

  String? _extractApiMessage(dynamic data) {
    if (data is String) {
      final text = data.trim();
      return text.isNotEmpty ? text : null;
    }
    if (data is Map<String, dynamic>) {
      final message = data['message'];
      if (message is String && message.trim().isNotEmpty) return message;

      final description = data['description'];
      if (description is String && description.trim().isNotEmpty)
        return description;

      final title = data['title'];
      if (title is String && title.trim().isNotEmpty) return title;

      final code = data['code'];
      if (code is String && code.trim().isNotEmpty) return code;

      final error = data['error'];
      if (error is Map<String, dynamic>) {
        final errorMessage = error['message'];
        if (errorMessage is String && errorMessage.trim().isNotEmpty)
          return errorMessage;
      }
    }
    return null;
  }
}
