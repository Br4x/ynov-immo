# swagger.api.RealEstateVisitApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realEstateVisitGet**](RealEstateVisitApi.md#realEstateVisitGet) | **GET** /real-estate-visit | get all real-estate-visit by pagination
[**realEstateVisitIdDelete**](RealEstateVisitApi.md#realEstateVisitIdDelete) | **DELETE** /real-estate-visit/{Id} | Destroy a real-estate-visit by ID
[**realEstateVisitIdGet**](RealEstateVisitApi.md#realEstateVisitIdGet) | **GET** /real-estate-visit/{Id} | get a real-estate-visit by ID
[**realEstateVisitPatch**](RealEstateVisitApi.md#realEstateVisitPatch) | **PATCH** /real-estate-visit | update real-estate-visit
[**realEstateVisitPost**](RealEstateVisitApi.md#realEstateVisitPost) | **POST** /real-estate-visit | create real-estate-visit


# **realEstateVisitGet**
> List<RealEstateVisitPagination> realEstateVisitGet(where, fields, order, offset, limit)

get all real-estate-visit by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateVisitApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstateVisitGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateVisitApi->realEstateVisitGet: $e\n");
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

[**List<RealEstateVisitPagination>**](RealEstateVisitPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateVisitIdDelete**
> ApiResponse realEstateVisitIdDelete(id)

Destroy a real-estate-visit by ID

delete a real-estate-visit by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateVisitApi();
var id = 789; // int | ID of real-estate-visit to delete

try { 
    var result = api_instance.realEstateVisitIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateVisitApi->realEstateVisitIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-visit to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateVisitIdGet**
> RealEstateVisit realEstateVisitIdGet(id)

get a real-estate-visit by ID

get a real-estate-visit by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateVisitApi();
var id = 789; // int | ID of real-estate-visit to return

try { 
    var result = api_instance.realEstateVisitIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateVisitApi->realEstateVisitIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-visit to return | 

### Return type

[**RealEstateVisit**](RealEstateVisit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateVisitPatch**
> ApiResponse realEstateVisitPatch(body)

update real-estate-visit

update real-estate-visit

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateVisitApi();
var body = new RealEstateVisit(); // RealEstateVisit | create real-estate-visit

try { 
    var result = api_instance.realEstateVisitPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateVisitApi->realEstateVisitPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateVisit**](RealEstateVisit.md)| create real-estate-visit | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateVisitPost**
> ApiResponse realEstateVisitPost(body)

create real-estate-visit

create real-estate-visit

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateVisitApi();
var body = new RealEstateVisit(); // RealEstateVisit | create real-estate-visit

try { 
    var result = api_instance.realEstateVisitPost(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateVisitApi->realEstateVisitPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateVisit**](RealEstateVisit.md)| create real-estate-visit | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

