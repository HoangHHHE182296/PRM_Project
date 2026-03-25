# public_openapi.api.SeedApi

## Load the API package
```dart
import 'package:public_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiSeedCategoriesPost**](SeedApi.md#apiseedcategoriespost) | **POST** /api/seed/categories | 
[**apiSeedProductsPost**](SeedApi.md#apiseedproductspost) | **POST** /api/seed/products | 


# **apiSeedCategoriesPost**
> apiSeedCategoriesPost()



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getSeedApi();

try {
    api.apiSeedCategoriesPost();
} on DioException catch (e) {
    print('Exception when calling SeedApi->apiSeedCategoriesPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiSeedProductsPost**
> apiSeedProductsPost()



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getSeedApi();

try {
    api.apiSeedProductsPost();
} on DioException catch (e) {
    print('Exception when calling SeedApi->apiSeedProductsPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

