# openapi.api.PublicProductApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPublicProductsGet**](PublicProductApi.md#apipublicproductsget) | **GET** /api/public/products | 


# **apiPublicProductsGet**
> ProductResponsePaginatedListApiSuccessResponse apiPublicProductsGet(searchTerm, categoryId, sortOrder, pageIndex, pageSize)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPublicProductApi();
final String searchTerm = searchTerm_example; // String | 
final String categoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String sortOrder = sortOrder_example; // String | 
final int pageIndex = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiPublicProductsGet(searchTerm, categoryId, sortOrder, pageIndex, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PublicProductApi->apiPublicProductsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | **String**|  | [optional] 
 **categoryId** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 
 **pageIndex** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**ProductResponsePaginatedListApiSuccessResponse**](ProductResponsePaginatedListApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

