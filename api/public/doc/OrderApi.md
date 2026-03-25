# public_openapi.api.OrderApi

## Load the API package
```dart
import 'package:public_openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOrdersGetAllOrdersGet**](OrderApi.md#apiordersgetallordersget) | **GET** /api/orders/get-all-orders | 
[**apiOrdersIdInvoicePdfGet**](OrderApi.md#apiordersidinvoicepdfget) | **GET** /api/orders/{id}/invoice/pdf | 
[**apiOrdersIdInvoiceXmlGet**](OrderApi.md#apiordersidinvoicexmlget) | **GET** /api/orders/{id}/invoice/xml | 
[**apiOrdersIdStatusPut**](OrderApi.md#apiordersidstatusput) | **PUT** /api/orders/{id}/status | 


# **apiOrdersGetAllOrdersGet**
> OrderListResponsePagedResultApiSuccessResponse apiOrdersGetAllOrdersGet(pageNumber, pageSize, search, sortBy, sortDescending)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getOrderApi();
final int pageNumber = 56; // int | 
final int pageSize = 56; // int | 
final String search = search_example; // String | 
final String sortBy = sortBy_example; // String | 
final bool sortDescending = true; // bool | 

try {
    final response = api.apiOrdersGetAllOrdersGet(pageNumber, pageSize, search, sortBy, sortDescending);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderApi->apiOrdersGetAllOrdersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **search** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] 
 **sortDescending** | **bool**|  | [optional] 

### Return type

[**OrderListResponsePagedResultApiSuccessResponse**](OrderListResponsePagedResultApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersIdInvoicePdfGet**
> apiOrdersIdInvoicePdfGet(id)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getOrderApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiOrdersIdInvoicePdfGet(id);
} on DioException catch (e) {
    print('Exception when calling OrderApi->apiOrdersIdInvoicePdfGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersIdInvoiceXmlGet**
> apiOrdersIdInvoiceXmlGet(id)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getOrderApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiOrdersIdInvoiceXmlGet(id);
} on DioException catch (e) {
    print('Exception when calling OrderApi->apiOrdersIdInvoiceXmlGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOrdersIdStatusPut**
> BooleanApiSuccessResponse apiOrdersIdStatusPut(id, orderId, status)



### Example
```dart
import 'package:public_openapi/api.dart';

final api = PublicOpenapi().getOrderApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final OrderStatus status = ; // OrderStatus | 

try {
    final response = api.apiOrdersIdStatusPut(id, orderId, status);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OrderApi->apiOrdersIdStatusPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **orderId** | **String**|  | [optional] 
 **status** | [**OrderStatus**](OrderStatus.md)|  | [optional] 

### Return type

[**BooleanApiSuccessResponse**](BooleanApiSuccessResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

