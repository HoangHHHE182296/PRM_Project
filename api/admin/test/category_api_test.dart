import 'package:test/test.dart';
import 'package:internal_openapi/internal_openapi.dart';


/// tests for CategoryApi
void main() {
  final instance = InternalOpenapi().getCategoryApi();

  group(CategoryApi, () {
    //Future<CategoryResponseApiSuccessResponse> apiCategoriesCreateCategoryPost({ CreateCategoryCommand createCategoryCommand }) async
    test('test apiCategoriesCreateCategoryPost', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiCategoriesDeleteCategoryIdDelete(String id) async
    test('test apiCategoriesDeleteCategoryIdDelete', () async {
      // TODO
    });

    //Future<CategorySummaryResponseIEnumerableApiSuccessResponse> apiCategoriesGetCategoriesGet({ ProductType type, String search, String sortBy, bool sortDescending, int pageNumber, int pageSize }) async
    test('test apiCategoriesGetCategoriesGet', () async {
      // TODO
    });

    //Future<CategoryGroupResponseListApiSuccessResponse> apiCategoriesGetCategoriesGroupedGet({ int parentSkip, int parentTake, ProductType supportedProductType }) async
    test('test apiCategoriesGetCategoriesGroupedGet', () async {
      // TODO
    });

    //Future<CategoryResponseApiSuccessResponse> apiCategoriesGetCategoryIdGet(String id) async
    test('test apiCategoriesGetCategoryIdGet', () async {
      // TODO
    });

    //Future<CategoryResponseApiSuccessResponse> apiCategoriesUpdateCategoryIdPut(String id, { UpdateCategoryCommand updateCategoryCommand }) async
    test('test apiCategoriesUpdateCategoryIdPut', () async {
      // TODO
    });

  });
}
