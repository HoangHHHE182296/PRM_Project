# internal_openapi.api.AdminAnalyticsApi

## Load the API package
```dart
import 'package:internal_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAdminAnalyticsSummaryGet**](AdminAnalyticsApi.md#apiadminanalyticssummaryget) | **GET** /api/AdminAnalytics/summary | 


# **apiAdminAnalyticsSummaryGet**
> apiAdminAnalyticsSummaryGet()



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAdminAnalyticsApi();

try {
    api.apiAdminAnalyticsSummaryGet();
} on DioException catch (e) {
    print('Exception when calling AdminAnalyticsApi->apiAdminAnalyticsSummaryGet: $e\n');
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

