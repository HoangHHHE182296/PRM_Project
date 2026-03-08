# openapi.api.PaymentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPaymentCreatePaymentUrlPost**](PaymentApi.md#apipaymentcreatepaymenturlpost) | **POST** /api/Payment/create-payment-url | 
[**apiPaymentPayosWebhookPost**](PaymentApi.md#apipaymentpayoswebhookpost) | **POST** /api/Payment/payos-webhook | 


# **apiPaymentCreatePaymentUrlPost**
> apiPaymentCreatePaymentUrlPost(createPayOsLinkCommand)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentApi();
final CreatePayOsLinkCommand createPayOsLinkCommand = ; // CreatePayOsLinkCommand | 

try {
    api.apiPaymentCreatePaymentUrlPost(createPayOsLinkCommand);
} on DioException catch (e) {
    print('Exception when calling PaymentApi->apiPaymentCreatePaymentUrlPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPayOsLinkCommand** | [**CreatePayOsLinkCommand**](CreatePayOsLinkCommand.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentPayosWebhookPost**
> apiPaymentPayosWebhookPost(webhookType)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentApi();
final WebhookType webhookType = ; // WebhookType | 

try {
    api.apiPaymentPayosWebhookPost(webhookType);
} on DioException catch (e) {
    print('Exception when calling PaymentApi->apiPaymentPayosWebhookPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookType** | [**WebhookType**](WebhookType.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

