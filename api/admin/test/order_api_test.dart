import 'package:test/test.dart';
import 'package:internal_openapi/internal_openapi.dart';


/// tests for OrderApi
void main() {
  final instance = InternalOpenapi().getOrderApi();

  group(OrderApi, () {
    //Future<OrderListResponsePagedResultApiSuccessResponse> apiOrdersGetAllOrdersGet({ int pageNumber, int pageSize, String search, String sortBy, bool sortDescending }) async
    test('test apiOrdersGetAllOrdersGet', () async {
      // TODO
    });

    //Future apiOrdersIdInvoicePdfGet(String id) async
    test('test apiOrdersIdInvoicePdfGet', () async {
      // TODO
    });

    //Future apiOrdersIdInvoiceXmlGet(String id) async
    test('test apiOrdersIdInvoiceXmlGet', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiOrdersIdStatusPut(String id, { String orderId, OrderStatus status }) async
    test('test apiOrdersIdStatusPut', () async {
      // TODO
    });

  });
}
