# swagger.api.RealEstateApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realEstateGet**](RealEstateApi.md#realEstateGet) | **GET** /real-estate | get all real-estate by pagination
[**realEstateIdDelete**](RealEstateApi.md#realEstateIdDelete) | **DELETE** /real-estate/{Id} | Destroy a real-estate by ID
[**realEstateIdGet**](RealEstateApi.md#realEstateIdGet) | **GET** /real-estate/{Id} | get a real-estate by ID
[**realEstatePatch**](RealEstateApi.md#realEstatePatch) | **PATCH** /real-estate | update real-estate
[**realEstatePost**](RealEstateApi.md#realEstatePost) | **POST** /real-estate | create real-estate


# **realEstateGet**
> List<RealEstatePagination> realEstateGet(where, fields, order, offset, limit)

get all real-estate by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstateGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateApi->realEstateGet: $e\n");
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

[**List<RealEstatePagination>**](RealEstatePagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateIdDelete**
> ApiResponse realEstateIdDelete(id)

Destroy a real-estate by ID

delete a real-estate by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateApi();
var id = 789; // int | ID of real-estate to delete

try { 
    var result = api_instance.realEstateIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateApi->realEstateIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateIdGet**
> RealEstate realEstateIdGet(id)

get a real-estate by ID

get a real-estate by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateApi();
var id = 789; // int | ID of real-estate to return

try { 
    var result = api_instance.realEstateIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateApi->realEstateIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate to return | 

### Return type

[**RealEstate**](RealEstate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePatch**
> ApiResponse realEstatePatch(body)

update real-estate

update real-estate

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateApi();
var body = new RealEstate(); // RealEstate | create real-estate

try { 
    var result = api_instance.realEstatePatch(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateApi->realEstatePatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstate**](RealEstate.md)| create real-estate | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePost**
> ApiResponse realEstatePost(body)

create real-estate

create real-estate

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateApi();
var body = new RealEstate(); // RealEstate | create real-estate

try { 
    var result = api_instance.realEstatePost(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateApi->realEstatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstate**](RealEstate.md)| create real-estate | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

