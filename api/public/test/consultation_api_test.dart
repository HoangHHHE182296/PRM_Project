import 'package:test/test.dart';
import 'package:public_openapi/public_openapi.dart';


/// tests for ConsultationApi
void main() {
  final instance = PublicOpenapi().getConsultationApi();

  group(ConsultationApi, () {
    //Future<AiRecommendationResponseApiSuccessResponse> apiConsultationChatPost({ ConsultationChatRequest consultationChatRequest }) async
    test('test apiConsultationChatPost', () async {
      // TODO
    });

    //Future<GuidApiSuccessResponse> apiConsultationStartPost({ StartConsultationRequest startConsultationRequest }) async
    test('test apiConsultationStartPost', () async {
      // TODO
    });

  });
}
