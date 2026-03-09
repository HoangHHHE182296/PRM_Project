# public_openapi.api.AuthApi

## Load the API package
```dart
import 'package:public_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAuthGoogleLoginPost**](AuthApi.md#apiauthgoogleloginpost) | **POST** /api/auth/google-login | 
[**apiAuthLoginPost**](AuthApi.md#apiauthloginpost) | **POST** /api/auth/login | 
[**apiAuthRefreshTokenPost**](AuthApi.md#apiauthrefreshtokenpost) | **POST** /api/auth/refresh-token | 
[**apiAuthRegisterPost**](AuthApi.md#apiauthregisterpost) | **POST** /api/auth/register | 


# **apiAuthGoogleLoginPost**
> LoginResponseApiSuccessResponse apiAuthGoogleLoginPost(googleLoginCommand)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getAuthApi();
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
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getAuthApi();
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
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getAuthApi();
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

# **apiAuthRegisterPost**
> UserResponseApiSuccessResponse apiAuthRegisterPost(registerCommand)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getAuthApi();
final RegisterCommand registerCommand = ; // RegisterCommand | 

try {
    final response = api.apiAuthRegisterPost(registerCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerCommand** | [**RegisterCommand**](RegisterCommand.md)|  | [optional] 

### Return type

[**UserResponseApiSuccessResponse**](UserResponseApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

