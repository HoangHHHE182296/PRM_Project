# public_openapi.api.ConsultationApi

## Load the API package
```dart
import 'package:public_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiConsultationChatPost**](ConsultationApi.md#apiconsultationchatpost) | **POST** /api/consultation/chat | 
[**apiConsultationStartPost**](ConsultationApi.md#apiconsultationstartpost) | **POST** /api/consultation/start | 


# **apiConsultationChatPost**
> AiRecommendationResponseApiSuccessResponse apiConsultationChatPost(consultationChatRequest)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getConsultationApi();
final ConsultationChatRequest consultationChatRequest = ; // ConsultationChatRequest | 

try {
    final response = api.apiConsultationChatPost(consultationChatRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsultationApi->apiConsultationChatPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consultationChatRequest** | [**ConsultationChatRequest**](ConsultationChatRequest.md)|  | [optional] 

### Return type

[**AiRecommendationResponseApiSuccessResponse**](AiRecommendationResponseApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiConsultationStartPost**
> GuidApiSuccessResponse apiConsultationStartPost(startConsultationRequest)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getConsultationApi();
final StartConsultationRequest startConsultationRequest = ; // StartConsultationRequest | 

try {
    final response = api.apiConsultationStartPost(startConsultationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConsultationApi->apiConsultationStartPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startConsultationRequest** | [**StartConsultationRequest**](StartConsultationRequest.md)|  | [optional] 

### Return type

[**GuidApiSuccessResponse**](GuidApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

