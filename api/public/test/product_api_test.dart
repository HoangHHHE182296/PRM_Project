import 'package:test/test.dart';
import 'package:public_openapi/public_openapi.dart';


/// tests for ProductApi
void main() {
  final instance = PublicOpenapi().getProductApi();

  group(ProductApi, () {
    //Future<StringIEnumerableApiSuccessResponse> apiProductsGetAvailableTagsCategoryIdGet(String categoryId, { String search, int pageNumber, int pageSize }) async
    test('test apiProductsGetAvailableTagsCategoryIdGet', () async {
      // TODO
    });

    //Future<ThemeCollectionDtoIEnumerableApiSuccessResponse> apiProductsGetAvailableThemesGet({ String search, int pageNumber, int pageSize }) async
    test('test apiProductsGetAvailableThemesGet', () async {
      // TODO
    });

    //Future<ProductDetailResponseApiSuccessResponse> apiProductsGetPublicProductDetailIdGet(String id) async
    test('test apiProductsGetPublicProductDetailIdGet', () async {
      // TODO
    });

    //Future<ProductListResponseIEnumerableApiSuccessResponse> apiProductsGetPublicProductListGet({ ProductType type, String categoryId, String search, double minPrice, double maxPrice, BuiltList<String> tags, String themeCollectionId, bool inStockOnly, double minRating, String sortBy, bool sortDescending, int pageNumber, int pageSize }) async
    test('test apiProductsGetPublicProductListGet', () async {
      // TODO
    });

  });
}
