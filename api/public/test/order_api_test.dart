import 'package:test/test.dart';
import 'package:public_openapi/public_openapi.dart';


/// tests for OrderApi
void main() {
  final instance = PublicOpenapi().getOrderApi();

  group(OrderApi, () {
    //Future apiOrderPost({ CreateOrderRequest createOrderRequest }) async
    test('test apiOrderPost', () async {
      // TODO
    });

  });
}
