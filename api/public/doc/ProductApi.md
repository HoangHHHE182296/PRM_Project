# public_openapi.api.ProductApi

## Load the API package
```dart
import 'package:public_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiProductsGetAvailableTagsCategoryIdGet**](ProductApi.md#apiproductsgetavailabletagscategoryidget) | **GET** /api/products/get-available-tags/{categoryId} | 
[**apiProductsGetAvailableThemesGet**](ProductApi.md#apiproductsgetavailablethemesget) | **GET** /api/products/get-available-themes | 
[**apiProductsGetPublicProductDetailIdGet**](ProductApi.md#apiproductsgetpublicproductdetailidget) | **GET** /api/products/get-public-product-detail/{id} | 
[**apiProductsGetPublicProductListGet**](ProductApi.md#apiproductsgetpublicproductlistget) | **GET** /api/products/get-public-product-list | 


# **apiProductsGetAvailableTagsCategoryIdGet**
> StringIEnumerableApiSuccessResponse apiProductsGetAvailableTagsCategoryIdGet(categoryId, search, pageNumber, pageSize)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getProductApi();
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
> ThemeCollectionDtoIEnumerableApiSuccessResponse apiProductsGetAvailableThemesGet(search, pageNumber, pageSize)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getProductApi();
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

[**ThemeCollectionDtoIEnumerableApiSuccessResponse**](ThemeCollectionDtoIEnumerableApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsGetPublicProductDetailIdGet**
> ProductDetailResponseApiSuccessResponse apiProductsGetPublicProductDetailIdGet(id)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getProductApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiProductsGetPublicProductDetailIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsGetPublicProductDetailIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ProductDetailResponseApiSuccessResponse**](ProductDetailResponseApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProductsGetPublicProductListGet**
> ProductListResponseIEnumerableApiSuccessResponse apiProductsGetPublicProductListGet(type, categoryId, search, minPrice, maxPrice, tags, themeCollectionId, inStockOnly, minRating, sortBy, sortDescending, pageNumber, pageSize)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getProductApi();
final ProductType type = ; // ProductType | 
final String categoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String search = search_example; // String | 
final double minPrice = 1.2; // double | 
final double maxPrice = 1.2; // double | 
final BuiltList<String> tags = ; // BuiltList<String> | 
final String themeCollectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final bool inStockOnly = true; // bool | 
final double minRating = 1.2; // double | 
final String sortBy = sortBy_example; // String | 
final bool sortDescending = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiProductsGetPublicProductListGet(type, categoryId, search, minPrice, maxPrice, tags, themeCollectionId, inStockOnly, minRating, sortBy, sortDescending, pageNumber, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ProductApi->apiProductsGetPublicProductListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**ProductType**](.md)|  | [optional] 
 **categoryId** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 
 **minPrice** | **double**|  | [optional] 
 **maxPrice** | **double**|  | [optional] 
 **tags** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **themeCollectionId** | **String**|  | [optional] 
 **inStockOnly** | **bool**|  | [optional] 
 **minRating** | **double**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortDescending** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**ProductListResponseIEnumerableApiSuccessResponse**](ProductListResponseIEnumerableApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

