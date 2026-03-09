import 'package:test/test.dart';
import 'package:public_openapi/public_openapi.dart';


/// tests for PublicCategoryApi
void main() {
  final instance = PublicOpenapi().getPublicCategoryApi();

  group(PublicCategoryApi, () {
    //Future<CategorySummaryResponseIEnumerableApiSuccessResponse> apiPublicCategoriesGet({ JsonObject query }) async
    test('test apiPublicCategoriesGet', () async {
      // TODO
    });

  });
}
