# swagger.api.RealEstateFeedbackApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realEstateFeedbackGet**](RealEstateFeedbackApi.md#realEstateFeedbackGet) | **GET** /real-estate-feedback | get all real-estate-feedback by pagination
[**realEstateFeedbackIdDelete**](RealEstateFeedbackApi.md#realEstateFeedbackIdDelete) | **DELETE** /real-estate-feedback/{Id} | Destroy a real-estate-feedback by ID
[**realEstateFeedbackIdGet**](RealEstateFeedbackApi.md#realEstateFeedbackIdGet) | **GET** /real-estate-feedback/{Id} | get a real-estate-feedback by ID
[**realEstateFeedbackPatch**](RealEstateFeedbackApi.md#realEstateFeedbackPatch) | **PATCH** /real-estate-feedback | update real-estate-feedback
[**realEstateFeedbackPost**](RealEstateFeedbackApi.md#realEstateFeedbackPost) | **POST** /real-estate-feedback | create real-estate-feedback


# **realEstateFeedbackGet**
> List<RealEstateFeedbackPagination> realEstateFeedbackGet(where, fields, order, offset, limit)

get all real-estate-feedback by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateFeedbackApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstateFeedbackGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateFeedbackApi->realEstateFeedbackGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | [**List&lt;String&gt;**](String.md)| column:value will use sql LIKE for search eg:id:67 will where id &gt;67 eg2: name:eric &#x3D;&gt; where name LIKE &#39;%eric%&#39; | [optional] 
 **fields** | **String**| {$tableColumn},{$tableColumn}...  | [optional] 
 **order** | **String**| eg: id desc, name desc | [optional] 
 **offset** | **int**| sql offset eg: 10 | [optional] 
 **limit** | **int**| limit returning object count | [optional] [default to 2]

### Return type

[**List<RealEstateFeedbackPagination>**](RealEstateFeedbackPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateFeedbackIdDelete**
> ApiResponse realEstateFeedbackIdDelete(id)

Destroy a real-estate-feedback by ID

delete a real-estate-feedback by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateFeedbackApi();
var id = 789; // int | ID of real-estate-feedback to delete

try { 
    var result = api_instance.realEstateFeedbackIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateFeedbackApi->realEstateFeedbackIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-feedback to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateFeedbackIdGet**
> RealEstateFeedback realEstateFeedbackIdGet(id)

get a real-estate-feedback by ID

get a real-estate-feedback by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateFeedbackApi();
var id = 789; // int | ID of real-estate-feedback to return

try { 
    var result = api_instance.realEstateFeedbackIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateFeedbackApi->realEstateFeedbackIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-feedback to return | 

### Return type

[**RealEstateFeedback**](RealEstateFeedback.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateFeedbackPatch**
> ApiResponse realEstateFeedbackPatch(body)

update real-estate-feedback

update real-estate-feedback

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateFeedbackApi();
var body = new RealEstateFeedback(); // RealEstateFeedback | create real-estate-feedback

try { 
    var result = api_instance.realEstateFeedbackPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateFeedbackApi->realEstateFeedbackPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateFeedback**](RealEstateFeedback.md)| create real-estate-feedback | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateFeedbackPost**
> ApiResponse realEstateFeedbackPost(body)

create real-estate-feedback

create real-estate-feedback

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateFeedbackApi();
var body = new RealEstateFeedback(); // RealEstateFeedback | create real-estate-feedback

try { 
    var result = api_instance.realEstateFeedbackPost(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateFeedbackApi->realEstateFeedbackPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateFeedback**](RealEstateFeedback.md)| create real-estate-feedback | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

