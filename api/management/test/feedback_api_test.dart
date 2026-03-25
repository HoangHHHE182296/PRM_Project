import 'package:test/test.dart';
import 'package:management_openapi/management_openapi.dart';


/// tests for FeedbackApi
void main() {
  final instance = ManagementOpenapi().getFeedbackApi();

  group(FeedbackApi, () {
    //Future<FeedbackResponsePagedResultApiSuccessResponse> apiFeedbacksAdminGetListGet({ String userId, String productId, DateTime startDate, DateTime endDate, String sortBy, bool sortDescending, int pageNumber, int pageSize }) async
    test('test apiFeedbacksAdminGetListGet', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiFeedbacksAdminIdApprovePut(String id) async
    test('test apiFeedbacksAdminIdApprovePut', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiFeedbacksAdminIdRejectPut(String id) async
    test('test apiFeedbacksAdminIdRejectPut', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiFeedbacksAdminIdReplyPut(String id, { String body }) async
    test('test apiFeedbacksAdminIdReplyPut', () async {
      // TODO
    });

  });
}
