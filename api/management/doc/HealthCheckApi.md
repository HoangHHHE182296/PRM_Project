# management_openapi.api.HealthCheckApi

## Load the API package
```dart
import 'package:management_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiHealthCheckGet**](HealthCheckApi.md#apihealthcheckget) | **GET** /api/health-check | 


# **apiHealthCheckGet**
> apiHealthCheckGet()



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getHealthCheckApi();

try {
    api.apiHealthCheckGet();
} on DioException catch (e) {
    print('Exception when calling HealthCheckApi->apiHealthCheckGet: $e\n');
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

