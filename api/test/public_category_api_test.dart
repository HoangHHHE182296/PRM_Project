import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PublicCategoryApi
void main() {
  final instance = Openapi().getPublicCategoryApi();

  group(PublicCategoryApi, () {
    //Future<CategorySummaryResponseIEnumerableApiSuccessResponse> apiPublicCategoriesGet({ JsonObject query }) async
    test('test apiPublicCategoriesGet', () async {
      // TODO
    });

  });
}
