# internal_openapi.api.AccountApi

## Load the API package
```dart
import 'package:internal_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAccountGenerateOtpPost**](AccountApi.md#apiaccountgenerateotppost) | **POST** /api/account/generate-otp | 
[**apiAccountPasswordChangePut**](AccountApi.md#apiaccountpasswordchangeput) | **PUT** /api/account/password/change | 
[**apiAccountPasswordSetPost**](AccountApi.md#apiaccountpasswordsetpost) | **POST** /api/account/password/set | 
[**apiAccountProfileAvatarPost**](AccountApi.md#apiaccountprofileavatarpost) | **POST** /api/account/profile/avatar | 
[**apiAccountProfileGet**](AccountApi.md#apiaccountprofileget) | **GET** /api/account/profile | 
[**apiAccountProfilePut**](AccountApi.md#apiaccountprofileput) | **PUT** /api/account/profile | 
[**apiAccountVerifyAccountPost**](AccountApi.md#apiaccountverifyaccountpost) | **POST** /api/account/verify-account | 


# **apiAccountGenerateOtpPost**
> BooleanApiSuccessResponse apiAccountGenerateOtpPost(generateOtpCommand)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAccountApi();
final GenerateOtpCommand generateOtpCommand = ; // GenerateOtpCommand | 

try {
    final response = api.apiAccountGenerateOtpPost(generateOtpCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountApi->apiAccountGenerateOtpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateOtpCommand** | [**GenerateOtpCommand**](GenerateOtpCommand.md)|  | [optional] 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountPasswordChangePut**
> BooleanApiSuccessResponse apiAccountPasswordChangePut(changePasswordCommand)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAccountApi();
final ChangePasswordCommand changePasswordCommand = ; // ChangePasswordCommand | 

try {
    final response = api.apiAccountPasswordChangePut(changePasswordCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountApi->apiAccountPasswordChangePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordCommand** | [**ChangePasswordCommand**](ChangePasswordCommand.md)|  | [optional] 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountPasswordSetPost**
> BooleanApiSuccessResponse apiAccountPasswordSetPost(setPasswordCommand)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAccountApi();
final SetPasswordCommand setPasswordCommand = ; // SetPasswordCommand | 

try {
    final response = api.apiAccountPasswordSetPost(setPasswordCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountApi->apiAccountPasswordSetPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setPasswordCommand** | [**SetPasswordCommand**](SetPasswordCommand.md)|  | [optional] 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountProfileAvatarPost**
> StringApiSuccessResponse apiAccountProfileAvatarPost(file)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAccountApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.apiAccountProfileAvatarPost(file);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountApi->apiAccountProfileAvatarPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | [optional] 

### Return type

[**StringApiSuccessResponse**](StringApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountProfileGet**
> ProfileResponseApiSuccessResponse apiAccountProfileGet()



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAccountApi();

try {
    final response = api.apiAccountProfileGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountApi->apiAccountProfileGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProfileResponseApiSuccessResponse**](ProfileResponseApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountProfilePut**
> BooleanApiSuccessResponse apiAccountProfilePut(updateProfileCommand)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAccountApi();
final UpdateProfileCommand updateProfileCommand = ; // UpdateProfileCommand | 

try {
    final response = api.apiAccountProfilePut(updateProfileCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountApi->apiAccountProfilePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateProfileCommand** | [**UpdateProfileCommand**](UpdateProfileCommand.md)|  | [optional] 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAccountVerifyAccountPost**
> BooleanApiSuccessResponse apiAccountVerifyAccountPost(verifyAccountCommand)



### Example
```dart
import 'package:internal_openapi/api.dart';

final api = InternalOpenapi().getAccountApi();
final VerifyAccountCommand verifyAccountCommand = ; // VerifyAccountCommand | 

try {
    final response = api.apiAccountVerifyAccountPost(verifyAccountCommand);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountApi->apiAccountVerifyAccountPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyAccountCommand** | [**VerifyAccountCommand**](VerifyAccountCommand.md)|  | [optional] 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

