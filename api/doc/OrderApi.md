# openapi.api.OrderApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOrderPost**](OrderApi.md#apiorderpost) | **POST** /api/Order | 


# **apiOrderPost**
> apiOrderPost(createOrderRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderApi();
final CreateOrderRequest createOrderRequest = ; // CreateOrderRequest | 

try {
    api.apiOrderPost(createOrderRequest);
} on DioException catch (e) {
    print('Exception when calling OrderApi->apiOrderPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrderRequest** | [**CreateOrderRequest**](CreateOrderRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

