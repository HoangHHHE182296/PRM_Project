import 'package:test/test.dart';
import 'package:public_openapi/public_openapi.dart';


/// tests for CategoryApi
void main() {
  final instance = PublicOpenapi().getCategoryApi();

  group(CategoryApi, () {
    //Future<CategoryGroupResponseListApiSuccessResponse> apiCategoriesGetCategoriesGroupedGet({ int parentSkip, int parentTake, int supportedProductType }) async
    test('test apiCategoriesGetCategoriesGroupedGet', () async {
      // TODO
    });

  });
}
