# swagger.api.CityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cityGet**](CityApi.md#cityGet) | **GET** /city | get all city by pagination
[**cityIdDelete**](CityApi.md#cityIdDelete) | **DELETE** /city/{Id} | Destroy a city by ID
[**cityIdGet**](CityApi.md#cityIdGet) | **GET** /city/{Id} | get a city by ID
[**cityPatch**](CityApi.md#cityPatch) | **PATCH** /city | update city
[**cityPost**](CityApi.md#cityPost) | **POST** /city | create city


# **cityGet**
> List<CityPagination> cityGet(where, fields, order, offset, limit)

get all city by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CityApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.cityGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling CityApi->cityGet: $e\n");
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

[**List<CityPagination>**](CityPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cityIdDelete**
> ApiResponse cityIdDelete(id)

Destroy a city by ID

delete a city by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CityApi();
var id = 789; // int | ID of city to delete

try { 
    var result = api_instance.cityIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling CityApi->cityIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of city to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cityIdGet**
> City cityIdGet(id)

get a city by ID

get a city by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CityApi();
var id = 789; // int | ID of city to return

try { 
    var result = api_instance.cityIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CityApi->cityIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of city to return | 

### Return type

[**City**](City.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cityPatch**
> ApiResponse cityPatch(body)

update city

update city

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CityApi();
var body = new City(); // City | create city

try { 
    var result = api_instance.cityPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling CityApi->cityPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**City**](City.md)| create city | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cityPost**
> ApiResponse cityPost(body)

create city

create city

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CityApi();
var body = new City(); // City | create city

try { 
    var result = api_instance.cityPost(body);
    print(result);
} catch (e) {
    print("Exception when calling CityApi->cityPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**City**](City.md)| create city | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

