# swagger.api.CitiesDistrictApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**citiesDistrictGet**](CitiesDistrictApi.md#citiesDistrictGet) | **GET** /cities-district | get all cities-district by pagination
[**citiesDistrictIdDelete**](CitiesDistrictApi.md#citiesDistrictIdDelete) | **DELETE** /cities-district/{Id} | Destroy a cities-district by ID
[**citiesDistrictIdGet**](CitiesDistrictApi.md#citiesDistrictIdGet) | **GET** /cities-district/{Id} | get a cities-district by ID
[**citiesDistrictPatch**](CitiesDistrictApi.md#citiesDistrictPatch) | **PATCH** /cities-district | update cities-district
[**citiesDistrictPost**](CitiesDistrictApi.md#citiesDistrictPost) | **POST** /cities-district | create cities-district


# **citiesDistrictGet**
> List<CitiesDistrictPagination> citiesDistrictGet(where, fields, order, offset, limit)

get all cities-district by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesDistrictApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.citiesDistrictGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling CitiesDistrictApi->citiesDistrictGet: $e\n");
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

[**List<CitiesDistrictPagination>**](CitiesDistrictPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **citiesDistrictIdDelete**
> ApiResponse citiesDistrictIdDelete(id)

Destroy a cities-district by ID

delete a cities-district by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesDistrictApi();
var id = 789; // int | ID of cities-district to delete

try { 
    var result = api_instance.citiesDistrictIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling CitiesDistrictApi->citiesDistrictIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of cities-district to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **citiesDistrictIdGet**
> CitiesDistrict citiesDistrictIdGet(id)

get a cities-district by ID

get a cities-district by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesDistrictApi();
var id = 789; // int | ID of cities-district to return

try { 
    var result = api_instance.citiesDistrictIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling CitiesDistrictApi->citiesDistrictIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of cities-district to return | 

### Return type

[**CitiesDistrict**](CitiesDistrict.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **citiesDistrictPatch**
> ApiResponse citiesDistrictPatch(body)

update cities-district

update cities-district

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesDistrictApi();
var body = new CitiesDistrict(); // CitiesDistrict | create cities-district

try { 
    var result = api_instance.citiesDistrictPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling CitiesDistrictApi->citiesDistrictPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CitiesDistrict**](CitiesDistrict.md)| create cities-district | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **citiesDistrictPost**
> ApiResponse citiesDistrictPost(body)

create cities-district

create cities-district

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CitiesDistrictApi();
var body = new CitiesDistrict(); // CitiesDistrict | create cities-district

try { 
    var result = api_instance.citiesDistrictPost(body);
    print(result);
} catch (e) {
    print("Exception when calling CitiesDistrictApi->citiesDistrictPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CitiesDistrict**](CitiesDistrict.md)| create cities-district | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

