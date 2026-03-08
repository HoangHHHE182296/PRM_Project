import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PaymentApi
void main() {
  final instance = Openapi().getPaymentApi();

  group(PaymentApi, () {
    //Future apiPaymentCreatePaymentUrlPost({ CreatePayOsLinkCommand createPayOsLinkCommand }) async
    test('test apiPaymentCreatePaymentUrlPost', () async {
      // TODO
    });

    //Future apiPaymentPayosWebhookPost({ WebhookType webhookType }) async
    test('test apiPaymentPayosWebhookPost', () async {
      // TODO
    });

  });
}
