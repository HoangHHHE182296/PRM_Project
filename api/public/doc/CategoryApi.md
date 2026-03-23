# public_openapi.api.CategoryApi

## Load the API package
```dart
import 'package:public_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCategoriesGetCategoriesGroupedGet**](CategoryApi.md#apicategoriesgetcategoriesgroupedget) | **GET** /api/categories/get-categories-grouped | 


# **apiCategoriesGetCategoriesGroupedGet**
> CategoryGroupResponseListApiSuccessResponse apiCategoriesGetCategoriesGroupedGet(parentSkip, parentTake, supportedProductType)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getCategoryApi();
final int parentSkip = 56; // int | 
final int parentTake = 56; // int | 
final int supportedProductType = 56; // int | 

try {
    final response = api.apiCategoriesGetCategoriesGroupedGet(parentSkip, parentTake, supportedProductType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesGetCategoriesGroupedGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parentSkip** | **int**|  | [optional] 
 **parentTake** | **int**|  | [optional] 
 **supportedProductType** | **int**|  | [optional] 

### Return type

[**CategoryGroupResponseListApiSuccessResponse**](CategoryGroupResponseListApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

