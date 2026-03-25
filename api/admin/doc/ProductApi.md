# internal_openapi.api.ProductApi

## Load the API package
```dart
import 'package:internal_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiProductsCreateProductPost**](ProductApi.md#apiproductscreateproductpost) | **POST** /api/products/create-product | 
[**apiProductsDeleteProductIdDelete**](ProductApi.md#apiproductsdeleteproductiddelete) | **DELETE** /api/products/delete-product/{id} | 
[**apiProductsGetAvailableTagsCategoryIdGet**](ProductApi.md#apiproductsgetavailabletagscategoryidget) | **GET** /api/products/get-available-tags/{categoryId} | 
[**apiProductsGetAvailableThemesGet**](ProductApi.md#apiproductsgetavailablethemesget) | **GET** /api/products/get-available-themes | 
[**apiProductsGetProductDetailIdGet**](ProductApi.md#apiproductsgetproductdetailidget) | **GET** /api/products/get-product-detail/{id} | 
[**apiProductsGetProductListGet**](ProductApi.md#apiproductsgetproductlistget) | **GET** /api/products/get-product-list | 
[**apiProductsUpdateProductIdPut**](ProductApi.md#apiproductsupdateproductidput) | **PUT** /api/products/update-product/{id} | 
[**apiProductsUploadImagePost**](ProductApi.md#apiproductsuploadimagepost) | **POST** /api/products/upload-image | 


# **apiProductsCreateProductPost**
> ProductDetailResponseApiSuccessResponse apiProductsCreateProductPost(name, SKU, price, description, productType, categoryId, themeCollectionId, images, model3DUrl, stockQuantity, lowStockThreshold, material, color, theme, weight, physicalLength, physicalWidth, physicalHeight, innerLength, innerWidth, innerHeight, outerLength, outerWidth, outerHeight, baseBoxId, giftSetItems)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final String name = name_example; // String | 
final String SKU = SKU_example; // String | 
final double price = 1.2; // double | 
final String description = description_example; // String | 
final ProductType productType = ; // ProductType | 
final String categoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String themeCollectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final BuiltList<ImageGift> images = ; // BuiltList<ImageGift> | 
final String model3DUrl = model3DUrl_example; // String | 
final int stockQuantity = 56; // int | 
final int lowStockThreshold = 56; // int | 
final String material = material_example; // String | 
final String color = color_example; // String | 
final String theme = theme_example; // String | 
final double weight = 1.2; // double | 
final double physicalLength = 1.2; // double | 
final double physicalWidth = 1.2; // double | 
final double physicalHeight = 1.2; // double | 
final double innerLength = 1.2; // double | 
final double innerWidth = 1.2; // double | 
final double innerHeight = 1.2; // double | 
final double outerLength = 1.2; // double | 
final double outerWidth = 1.2; // double | 
final double outerHeight = 1.2; // double | 
final String baseBoxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final BuiltList<GiftSetItem> giftSetItems = ; // BuiltList<GiftSetItem> | 

try {
    final response = api.apiProductsCreateProductPost(name, SKU, price, description, productType, categoryId, themeCollectionId, images, model3DUrl, stockQuantity, lowStockThreshold, material, color, theme, weight, physicalLength, physicalWidth, physicalHeight, innerLength, innerWidth, innerHeight, outerLength, outerWidth, outerHeight, baseBoxId, giftSetItems);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsCreateProductPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **SKU** | **String**|  | [optional] 
 **price** | **double**|  | [optional] 
 **description** | **String**|  | [optional] 
 **productType** | [**ProductType**](ProductType.md)|  | [optional] 
 **categoryId** | **String**|  | [optional] 
 **themeCollectionId** | **String**|  | [optional] 
 **images** | [**BuiltList&lt;ImageGift&gt;**](ImageGift.md)|  | [optional] 
 **model3DUrl** | **String**|  | [optional] 
 **stockQuantity** | **int**|  | [optional] 
 **lowStockThreshold** | **int**|  | [optional] 
 **material** | **String**|  | [optional] 
 **color** | **String**|  | [optional] 
 **theme** | **String**|  | [optional] 
 **weight** | **double**|  | [optional] 
 **physicalLength** | **double**|  | [optional] 
 **physicalWidth** | **double**|  | [optional] 
 **physicalHeight** | **double**|  | [optional] 
 **innerLength** | **double**|  | [optional] 
 **innerWidth** | **double**|  | [optional] 
 **innerHeight** | **double**|  | [optional] 
 **outerLength** | **double**|  | [optional] 
 **outerWidth** | **double**|  | [optional] 
 **outerHeight** | **double**|  | [optional] 
 **baseBoxId** | **String**|  | [optional] 
 **giftSetItems** | [**BuiltList&lt;GiftSetItem&gt;**](GiftSetItem.md)|  | [optional] 

### Return type

[**ProductDetailResponseApiSuccessResponse**](ProductDetailResponseApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsDeleteProductIdDelete**
> BooleanApiSuccessResponse apiProductsDeleteProductIdDelete(id)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsDeleteProductIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsDeleteProductIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsGetAvailableTagsCategoryIdGet**
> StringIEnumerableApiSuccessResponse apiProductsGetAvailableTagsCategoryIdGet(categoryId, search, pageNumber, pageSize)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final String categoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String search = search_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiProductsGetAvailableTagsCategoryIdGet(categoryId, search, pageNumber, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsGetAvailableTagsCategoryIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**|  | 
 **search** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 6]

### Return type

[**StringIEnumerableApiSuccessResponse**](StringIEnumerableApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsGetAvailableThemesGet**
> ThemeCollectionResponseIEnumerableApiSuccessResponse apiProductsGetAvailableThemesGet(search, pageNumber, pageSize)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final String search = search_example; // String | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiProductsGetAvailableThemesGet(search, pageNumber, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsGetAvailableThemesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**|  | [optional] 
 **pageNumber** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 6]

### Return type

[**ThemeCollectionResponseIEnumerableApiSuccessResponse**](ThemeCollectionResponseIEnumerableApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsGetProductDetailIdGet**
> ProductDetailResponseApiSuccessResponse apiProductsGetProductDetailIdGet(id)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsGetProductDetailIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsGetProductDetailIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ProductDetailResponseApiSuccessResponse**](ProductDetailResponseApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsGetProductListGet**
> ProductListResponsePagedResultApiSuccessResponse apiProductsGetProductListGet(type, categoryId, search, sortBy, sortDescending, pageNumber, pageSize)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final ProductType type = ; // ProductType | 
final String categoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String search = search_example; // String | 
final String sortBy = sortBy_example; // String | 
final bool sortDescending = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiProductsGetProductListGet(type, categoryId, search, sortBy, sortDescending, pageNumber, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsGetProductListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**ProductType**](.md)|  | [optional] 
 **categoryId** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortDescending** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**ProductListResponsePagedResultApiSuccessResponse**](ProductListResponsePagedResultApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsUpdateProductIdPut**
> ProductDetailResponseApiSuccessResponse apiProductsUpdateProductIdPut(id, id2, name, SKU, price, description, productType, categoryId, themeCollectionId, images, model3DUrl, stockQuantity, lowStockThreshold, material, color, theme, weight, physicalLength, physicalWidth, physicalHeight, innerLength, innerWidth, innerHeight, outerLength, outerWidth, outerHeight, baseBoxId, giftSetItems)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String id2 = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String name = name_example; // String | 
final String SKU = SKU_example; // String | 
final double price = 1.2; // double | 
final String description = description_example; // String | 
final ProductType productType = ; // ProductType | 
final String categoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String themeCollectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final BuiltList<ImageGift> images = ; // BuiltList<ImageGift> | 
final String model3DUrl = model3DUrl_example; // String | 
final int stockQuantity = 56; // int | 
final int lowStockThreshold = 56; // int | 
final String material = material_example; // String | 
final String color = color_example; // String | 
final String theme = theme_example; // String | 
final double weight = 1.2; // double | 
final double physicalLength = 1.2; // double | 
final double physicalWidth = 1.2; // double | 
final double physicalHeight = 1.2; // double | 
final double innerLength = 1.2; // double | 
final double innerWidth = 1.2; // double | 
final double innerHeight = 1.2; // double | 
final double outerLength = 1.2; // double | 
final double outerWidth = 1.2; // double | 
final double outerHeight = 1.2; // double | 
final String baseBoxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final BuiltList<GiftSetItem> giftSetItems = ; // BuiltList<GiftSetItem> | 

try {
    final response = api.apiProductsUpdateProductIdPut(id, id2, name, SKU, price, description, productType, categoryId, themeCollectionId, images, model3DUrl, stockQuantity, lowStockThreshold, material, color, theme, weight, physicalLength, physicalWidth, physicalHeight, innerLength, innerWidth, innerHeight, outerLength, outerWidth, outerHeight, baseBoxId, giftSetItems);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsUpdateProductIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **id2** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **SKU** | **String**|  | [optional] 
 **price** | **double**|  | [optional] 
 **description** | **String**|  | [optional] 
 **productType** | [**ProductType**](ProductType.md)|  | [optional] 
 **categoryId** | **String**|  | [optional] 
 **themeCollectionId** | **String**|  | [optional] 
 **images** | [**BuiltList&lt;ImageGift&gt;**](ImageGift.md)|  | [optional] 
 **model3DUrl** | **String**|  | [optional] 
 **stockQuantity** | **int**|  | [optional] 
 **lowStockThreshold** | **int**|  | [optional] 
 **material** | **String**|  | [optional] 
 **color** | **String**|  | [optional] 
 **theme** | **String**|  | [optional] 
 **weight** | **double**|  | [optional] 
 **physicalLength** | **double**|  | [optional] 
 **physicalWidth** | **double**|  | [optional] 
 **physicalHeight** | **double**|  | [optional] 
 **innerLength** | **double**|  | [optional] 
 **innerWidth** | **double**|  | [optional] 
 **innerHeight** | **double**|  | [optional] 
 **outerLength** | **double**|  | [optional] 
 **outerWidth** | **double**|  | [optional] 
 **outerHeight** | **double**|  | [optional] 
 **baseBoxId** | **String**|  | [optional] 
 **giftSetItems** | [**BuiltList&lt;GiftSetItem&gt;**](GiftSetItem.md)|  | [optional] 

### Return type

[**ProductDetailResponseApiSuccessResponse**](ProductDetailResponseApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsUploadImagePost**
> StringApiSuccessResponse apiProductsUploadImagePost(file)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getProductApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.apiProductsUploadImagePost(file);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsUploadImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | [optional] 

### Return type

[**StringApiSuccessResponse**](StringApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

