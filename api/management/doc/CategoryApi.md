# management_openapi.api.CategoryApi

## Load the API package
```dart
import 'package:management_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCategoriesCreateCategoryPost**](CategoryApi.md#apicategoriescreatecategorypost) | **POST** /api/categories/create-category | 
[**apiCategoriesDeleteCategoryIdDelete**](CategoryApi.md#apicategoriesdeletecategoryiddelete) | **DELETE** /api/categories/delete-category/{id} | 
[**apiCategoriesGetCategoriesGet**](CategoryApi.md#apicategoriesgetcategoriesget) | **GET** /api/categories/get-categories | 
[**apiCategoriesGetCategoriesGroupedGet**](CategoryApi.md#apicategoriesgetcategoriesgroupedget) | **GET** /api/categories/get-categories-grouped | 
[**apiCategoriesGetCategoryIdGet**](CategoryApi.md#apicategoriesgetcategoryidget) | **GET** /api/categories/get-category/{id} | 
[**apiCategoriesGetDeletedCategoriesGet**](CategoryApi.md#apicategoriesgetdeletedcategoriesget) | **GET** /api/categories/get-deleted-categories | 
[**apiCategoriesPermanentDeleteCategoryIdDelete**](CategoryApi.md#apicategoriespermanentdeletecategoryiddelete) | **DELETE** /api/categories/permanent-delete-category/{id} | 
[**apiCategoriesRestoreCategoryIdPut**](CategoryApi.md#apicategoriesrestorecategoryidput) | **PUT** /api/categories/restore-category/{id} | 
[**apiCategoriesUpdateCategoryIdPut**](CategoryApi.md#apicategoriesupdatecategoryidput) | **PUT** /api/categories/update-category/{id} | 


# **apiCategoriesCreateCategoryPost**
> CategoryResponseApiSuccessResponse apiCategoriesCreateCategoryPost(createCategoryCommand)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final CreateCategoryCommand createCategoryCommand = ; // CreateCategoryCommand | 

try {
    final response = api.apiCategoriesCreateCategoryPost(createCategoryCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesCreateCategoryPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCategoryCommand** | [**CreateCategoryCommand**](CreateCategoryCommand.md)|  | [optional] 

### Return type

[**CategoryResponseApiSuccessResponse**](CategoryResponseApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesDeleteCategoryIdDelete**
> BooleanApiSuccessResponse apiCategoriesDeleteCategoryIdDelete(id)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCategoriesDeleteCategoryIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesDeleteCategoryIdDelete: $e\n');
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

# **apiCategoriesGetCategoriesGet**
> CategorySummaryResponseIEnumerableApiSuccessResponse apiCategoriesGetCategoriesGet(type, search, sortBy, sortDescending, pageNumber, pageSize)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final ProductType type = ; // ProductType | 
final String search = search_example; // String | 
final String sortBy = sortBy_example; // String | 
final bool sortDescending = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiCategoriesGetCategoriesGet(type, search, sortBy, sortDescending, pageNumber, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesGetCategoriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**ProductType**](.md)|  | [optional] 
 **search** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortDescending** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**CategorySummaryResponseIEnumerableApiSuccessResponse**](CategorySummaryResponseIEnumerableApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesGetCategoriesGroupedGet**
> CategoryGroupResponseListApiSuccessResponse apiCategoriesGetCategoriesGroupedGet(parentSkip, parentTake, supportedProductType)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final int parentSkip = 56; // int | 
final int parentTake = 56; // int | 
final ProductType supportedProductType = ; // ProductType | 

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
 **supportedProductType** | [**ProductType**](.md)|  | [optional] 

### Return type

[**CategoryGroupResponseListApiSuccessResponse**](CategoryGroupResponseListApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesGetCategoryIdGet**
> CategoryResponseApiSuccessResponse apiCategoriesGetCategoryIdGet(id)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCategoriesGetCategoryIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesGetCategoryIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CategoryResponseApiSuccessResponse**](CategoryResponseApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesGetDeletedCategoriesGet**
> CategorySummaryResponsePagedResultApiSuccessResponse apiCategoriesGetDeletedCategoriesGet(type, search, sortBy, sortDescending, pageNumber, pageSize)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final ProductType type = ; // ProductType | 
final String search = search_example; // String | 
final String sortBy = sortBy_example; // String | 
final bool sortDescending = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiCategoriesGetDeletedCategoriesGet(type, search, sortBy, sortDescending, pageNumber, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesGetDeletedCategoriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**ProductType**](.md)|  | [optional] 
 **search** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortDescending** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**CategorySummaryResponsePagedResultApiSuccessResponse**](CategorySummaryResponsePagedResultApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCategoriesPermanentDeleteCategoryIdDelete**
> BooleanApiSuccessResponse apiCategoriesPermanentDeleteCategoryIdDelete(id)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCategoriesPermanentDeleteCategoryIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesPermanentDeleteCategoryIdDelete: $e\n');
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

# **apiCategoriesRestoreCategoryIdPut**
> BooleanApiSuccessResponse apiCategoriesRestoreCategoryIdPut(id)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiCategoriesRestoreCategoryIdPut(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesRestoreCategoryIdPut: $e\n');
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

# **apiCategoriesUpdateCategoryIdPut**
> CategoryResponseApiSuccessResponse apiCategoriesUpdateCategoryIdPut(id, updateCategoryCommand)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getCategoryApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateCategoryCommand updateCategoryCommand = ; // UpdateCategoryCommand | 

try {
    final response = api.apiCategoriesUpdateCategoryIdPut(id, updateCategoryCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CategoryApi->apiCategoriesUpdateCategoryIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateCategoryCommand** | [**UpdateCategoryCommand**](UpdateCategoryCommand.md)|  | [optional] 

### Return type

[**CategoryResponseApiSuccessResponse**](CategoryResponseApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

