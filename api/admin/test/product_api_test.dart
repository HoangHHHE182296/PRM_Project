import 'package:test/test.dart';
import 'package:internal_openapi/internal_openapi.dart';


/// tests for ProductApi
void main() {
  final instance = InternalOpenapi().getProductApi();

  group(ProductApi, () {
    //Future<ProductDetailResponseApiSuccessResponse> apiProductsCreateProductPost({ String name, String SKU, double price, String description, ProductType productType, String categoryId, String themeCollectionId, BuiltList<ImageGift> images, String model3DUrl, int stockQuantity, int lowStockThreshold, String material, String color, String theme, double weight, double physicalLength, double physicalWidth, double physicalHeight, double innerLength, double innerWidth, double innerHeight, double outerLength, double outerWidth, double outerHeight, String baseBoxId, BuiltList<GiftSetItem> giftSetItems }) async
    test('test apiProductsCreateProductPost', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiProductsDeleteProductIdDelete(String id) async
    test('test apiProductsDeleteProductIdDelete', () async {
      // TODO
    });

    //Future<StringIEnumerableApiSuccessResponse> apiProductsGetAvailableTagsCategoryIdGet(String categoryId, { String search, int pageNumber, int pageSize }) async
    test('test apiProductsGetAvailableTagsCategoryIdGet', () async {
      // TODO
    });

    //Future<ThemeCollectionResponseIEnumerableApiSuccessResponse> apiProductsGetAvailableThemesGet({ String search, int pageNumber, int pageSize }) async
    test('test apiProductsGetAvailableThemesGet', () async {
      // TODO
    });

    //Future<ProductDetailResponseApiSuccessResponse> apiProductsGetProductDetailIdGet(String id) async
    test('test apiProductsGetProductDetailIdGet', () async {
      // TODO
    });

    //Future<ProductListResponsePagedResultApiSuccessResponse> apiProductsGetProductListGet({ ProductType type, String categoryId, String search, String sortBy, bool sortDescending, int pageNumber, int pageSize }) async
    test('test apiProductsGetProductListGet', () async {
      // TODO
    });

    //Future<ProductDetailResponseApiSuccessResponse> apiProductsUpdateProductIdPut(String id, { String id2, String name, String SKU, double price, String description, ProductType productType, String categoryId, String themeCollectionId, BuiltList<ImageGift> images, String model3DUrl, int stockQuantity, int lowStockThreshold, String material, String color, String theme, double weight, double physicalLength, double physicalWidth, double physicalHeight, double innerLength, double innerWidth, double innerHeight, double outerLength, double outerWidth, double outerHeight, String baseBoxId, BuiltList<GiftSetItem> giftSetItems }) async
    test('test apiProductsUpdateProductIdPut', () async {
      // TODO
    });

    //Future<StringApiSuccessResponse> apiProductsUploadImagePost({ MultipartFile file }) async
    test('test apiProductsUploadImagePost', () async {
      // TODO
    });

  });
}
