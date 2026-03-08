import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ConsultationApi
void main() {
  final instance = Openapi().getConsultationApi();

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
