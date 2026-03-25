# management_openapi.api.FeedbackApi

## Load the API package
```dart
import 'package:management_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiFeedbacksAdminGetListGet**](FeedbackApi.md#apifeedbacksadmingetlistget) | **GET** /api/feedbacks/admin/get-list | 
[**apiFeedbacksAdminIdApprovePut**](FeedbackApi.md#apifeedbacksadminidapproveput) | **PUT** /api/feedbacks/admin/{id}/approve | 
[**apiFeedbacksAdminIdRejectPut**](FeedbackApi.md#apifeedbacksadminidrejectput) | **PUT** /api/feedbacks/admin/{id}/reject | 
[**apiFeedbacksAdminIdReplyPut**](FeedbackApi.md#apifeedbacksadminidreplyput) | **PUT** /api/feedbacks/admin/{id}/reply | 


# **apiFeedbacksAdminGetListGet**
> FeedbackResponsePagedResultApiSuccessResponse apiFeedbacksAdminGetListGet(userId, productId, startDate, endDate, sortBy, sortDescending, pageNumber, pageSize)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getFeedbackApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String sortBy = sortBy_example; // String | 
final bool sortDescending = true; // bool | 
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiFeedbacksAdminGetListGet(userId, productId, startDate, endDate, sortBy, sortDescending, pageNumber, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FeedbackApi->apiFeedbacksAdminGetListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **productId** | **String**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortDescending** | **bool**|  | [optional] 
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 

### Return type

[**FeedbackResponsePagedResultApiSuccessResponse**](FeedbackResponsePagedResultApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiFeedbacksAdminIdApprovePut**
> BooleanApiSuccessResponse apiFeedbacksAdminIdApprovePut(id)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getFeedbackApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiFeedbacksAdminIdApprovePut(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FeedbackApi->apiFeedbacksAdminIdApprovePut: $e\n');
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

# **apiFeedbacksAdminIdRejectPut**
> BooleanApiSuccessResponse apiFeedbacksAdminIdRejectPut(id)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getFeedbackApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiFeedbacksAdminIdRejectPut(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FeedbackApi->apiFeedbacksAdminIdRejectPut: $e\n');
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

# **apiFeedbacksAdminIdReplyPut**
> BooleanApiSuccessResponse apiFeedbacksAdminIdReplyPut(id, body)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getFeedbackApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String body = body_example; // String | 

try {
    final response = api.apiFeedbacksAdminIdReplyPut(id, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FeedbackApi->apiFeedbacksAdminIdReplyPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | **String**|  | [optional] 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

