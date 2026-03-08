import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderApi
void main() {
  final instance = Openapi().getOrderApi();

  group(OrderApi, () {
    //Future apiOrderPost({ CreateOrderRequest createOrderRequest }) async
    test('test apiOrderPost', () async {
      // TODO
    });

  });
}
