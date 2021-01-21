# swagger.api.RealEstatePropalApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realEstatePropalGet**](RealEstatePropalApi.md#realEstatePropalGet) | **GET** /real-estate-propal | get all real-estate-propal by pagination
[**realEstatePropalIdDelete**](RealEstatePropalApi.md#realEstatePropalIdDelete) | **DELETE** /real-estate-propal/{Id} | Destroy a real-estate-propal by ID
[**realEstatePropalIdGet**](RealEstatePropalApi.md#realEstatePropalIdGet) | **GET** /real-estate-propal/{Id} | get a real-estate-propal by ID
[**realEstatePropalPatch**](RealEstatePropalApi.md#realEstatePropalPatch) | **PATCH** /real-estate-propal | update real-estate-propal
[**realEstatePropalPost**](RealEstatePropalApi.md#realEstatePropalPost) | **POST** /real-estate-propal | create real-estate-propal


# **realEstatePropalGet**
> List<RealEstatePropalPagination> realEstatePropalGet(where, fields, order, offset, limit)

get all real-estate-propal by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstatePropalGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalApi->realEstatePropalGet: $e\n");
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

[**List<RealEstatePropalPagination>**](RealEstatePropalPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalIdDelete**
> ApiResponse realEstatePropalIdDelete(id)

Destroy a real-estate-propal by ID

delete a real-estate-propal by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalApi();
var id = 789; // int | ID of real-estate-propal to delete

try { 
    var result = api_instance.realEstatePropalIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalApi->realEstatePropalIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-propal to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalIdGet**
> RealEstatePropal realEstatePropalIdGet(id)

get a real-estate-propal by ID

get a real-estate-propal by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalApi();
var id = 789; // int | ID of real-estate-propal to return

try { 
    var result = api_instance.realEstatePropalIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalApi->realEstatePropalIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-propal to return | 

### Return type

[**RealEstatePropal**](RealEstatePropal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalPatch**
> ApiResponse realEstatePropalPatch(body)

update real-estate-propal

update real-estate-propal

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalApi();
var body = new RealEstatePropal(); // RealEstatePropal | create real-estate-propal

try { 
    var result = api_instance.realEstatePropalPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalApi->realEstatePropalPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstatePropal**](RealEstatePropal.md)| create real-estate-propal | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalPost**
> ApiResponse realEstatePropalPost(body)

create real-estate-propal

create real-estate-propal

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalApi();
var body = new RealEstatePropal(); // RealEstatePropal | create real-estate-propal

try { 
    var result = api_instance.realEstatePropalPost(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalApi->realEstatePropalPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstatePropal**](RealEstatePropal.md)| create real-estate-propal | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

