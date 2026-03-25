# management_openapi.api.AuthApi

## Load the API package
```dart
import 'package:management_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAuthGoogleLoginPost**](AuthApi.md#apiauthgoogleloginpost) | **POST** /api/auth/google-login | 
[**apiAuthLoginPost**](AuthApi.md#apiauthloginpost) | **POST** /api/auth/login | 
[**apiAuthRefreshTokenPost**](AuthApi.md#apiauthrefreshtokenpost) | **POST** /api/auth/refresh-token | 


# **apiAuthGoogleLoginPost**
> LoginResponseApiSuccessResponse apiAuthGoogleLoginPost(googleLoginCommand)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getAuthApi();
final GoogleLoginCommand googleLoginCommand = ; // GoogleLoginCommand | 

try {
    final response = api.apiAuthGoogleLoginPost(googleLoginCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthGoogleLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **googleLoginCommand** | [**GoogleLoginCommand**](GoogleLoginCommand.md)|  | [optional] 

### Return type

[**LoginResponseApiSuccessResponse**](LoginResponseApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthLoginPost**
> LoginResponseApiSuccessResponse apiAuthLoginPost(loginCommand)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getAuthApi();
final LoginCommand loginCommand = ; // LoginCommand | 

try {
    final response = api.apiAuthLoginPost(loginCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginCommand** | [**LoginCommand**](LoginCommand.md)|  | [optional] 

### Return type

[**LoginResponseApiSuccessResponse**](LoginResponseApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthRefreshTokenPost**
> LoginResponseApiSuccessResponse apiAuthRefreshTokenPost(refreshTokenCommand)



### Example
```dart
import 'package:management_openapi/api.dart';

final api = ManagementOpenapi().getAuthApi();
final RefreshTokenCommand refreshTokenCommand = ; // RefreshTokenCommand | 

try {
    final response = api.apiAuthRefreshTokenPost(refreshTokenCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthRefreshTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenCommand** | [**RefreshTokenCommand**](RefreshTokenCommand.md)|  | [optional] 

### Return type

[**LoginResponseApiSuccessResponse**](LoginResponseApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

