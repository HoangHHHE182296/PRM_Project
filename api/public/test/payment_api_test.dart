import 'package:test/test.dart';
import 'package:public_openapi/public_openapi.dart';


/// tests for PaymentApi
void main() {
  final instance = PublicOpenapi().getPaymentApi();

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
