# public_openapi.api.PublicCategoryApi

## Load the API package
```dart
import 'package:public_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPublicCategoriesGet**](PublicCategoryApi.md#apipubliccategoriesget) | **GET** /api/public/categories | 


# **apiPublicCategoriesGet**
> CategorySummaryResponseIEnumerableApiSuccessResponse apiPublicCategoriesGet(query)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getPublicCategoryApi();
final JsonObject query = Object; // JsonObject | 

try {
    final response = api.apiPublicCategoriesGet(query);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PublicCategoryApi->apiPublicCategoriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**JsonObject**](.md)|  | [optional] 

### Return type

[**CategorySummaryResponseIEnumerableApiSuccessResponse**](CategorySummaryResponseIEnumerableApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

