# swagger.api.RealEstatePropalsBuyerIndicationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realEstatePropalsBuyerIndicationGet**](RealEstatePropalsBuyerIndicationApi.md#realEstatePropalsBuyerIndicationGet) | **GET** /real-estate-propals-buyer-indication | get all real-estate-propals-buyer-indication by pagination
[**realEstatePropalsBuyerIndicationIdDelete**](RealEstatePropalsBuyerIndicationApi.md#realEstatePropalsBuyerIndicationIdDelete) | **DELETE** /real-estate-propals-buyer-indication/{Id} | Destroy a real-estate-propals-buyer-indication by ID
[**realEstatePropalsBuyerIndicationIdGet**](RealEstatePropalsBuyerIndicationApi.md#realEstatePropalsBuyerIndicationIdGet) | **GET** /real-estate-propals-buyer-indication/{Id} | get a real-estate-propals-buyer-indication by ID
[**realEstatePropalsBuyerIndicationPatch**](RealEstatePropalsBuyerIndicationApi.md#realEstatePropalsBuyerIndicationPatch) | **PATCH** /real-estate-propals-buyer-indication | update real-estate-propals-buyer-indication
[**realEstatePropalsBuyerIndicationPost**](RealEstatePropalsBuyerIndicationApi.md#realEstatePropalsBuyerIndicationPost) | **POST** /real-estate-propals-buyer-indication | create real-estate-propals-buyer-indication


# **realEstatePropalsBuyerIndicationGet**
> List<RealEstatePropalsBuyerIndicationPagination> realEstatePropalsBuyerIndicationGet(where, fields, order, offset, limit)

get all real-estate-propals-buyer-indication by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalsBuyerIndicationApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstatePropalsBuyerIndicationGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalsBuyerIndicationApi->realEstatePropalsBuyerIndicationGet: $e\n");
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

[**List<RealEstatePropalsBuyerIndicationPagination>**](RealEstatePropalsBuyerIndicationPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalsBuyerIndicationIdDelete**
> ApiResponse realEstatePropalsBuyerIndicationIdDelete(id)

Destroy a real-estate-propals-buyer-indication by ID

delete a real-estate-propals-buyer-indication by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalsBuyerIndicationApi();
var id = 789; // int | ID of real-estate-propals-buyer-indication to delete

try { 
    var result = api_instance.realEstatePropalsBuyerIndicationIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalsBuyerIndicationApi->realEstatePropalsBuyerIndicationIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-propals-buyer-indication to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalsBuyerIndicationIdGet**
> RealEstatePropalsBuyerIndication realEstatePropalsBuyerIndicationIdGet(id)

get a real-estate-propals-buyer-indication by ID

get a real-estate-propals-buyer-indication by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalsBuyerIndicationApi();
var id = 789; // int | ID of real-estate-propals-buyer-indication to return

try { 
    var result = api_instance.realEstatePropalsBuyerIndicationIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalsBuyerIndicationApi->realEstatePropalsBuyerIndicationIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-propals-buyer-indication to return | 

### Return type

[**RealEstatePropalsBuyerIndication**](RealEstatePropalsBuyerIndication.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalsBuyerIndicationPatch**
> ApiResponse realEstatePropalsBuyerIndicationPatch(body)

update real-estate-propals-buyer-indication

update real-estate-propals-buyer-indication

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalsBuyerIndicationApi();
var body = new RealEstatePropalsBuyerIndication(); // RealEstatePropalsBuyerIndication | create real-estate-propals-buyer-indication

try { 
    var result = api_instance.realEstatePropalsBuyerIndicationPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalsBuyerIndicationApi->realEstatePropalsBuyerIndicationPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstatePropalsBuyerIndication**](RealEstatePropalsBuyerIndication.md)| create real-estate-propals-buyer-indication | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstatePropalsBuyerIndicationPost**
> ApiResponse realEstatePropalsBuyerIndicationPost(body)

create real-estate-propals-buyer-indication

create real-estate-propals-buyer-indication

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstatePropalsBuyerIndicationApi();
var body = new RealEstatePropalsBuyerIndication(); // RealEstatePropalsBuyerIndication | create real-estate-propals-buyer-indication

try { 
    var result = api_instance.realEstatePropalsBuyerIndicationPost(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstatePropalsBuyerIndicationApi->realEstatePropalsBuyerIndicationPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstatePropalsBuyerIndication**](RealEstatePropalsBuyerIndication.md)| create real-estate-propals-buyer-indication | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

