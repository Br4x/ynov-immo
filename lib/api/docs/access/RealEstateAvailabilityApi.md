# swagger.api.RealEstateAvailabilityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realEstateAvailabilityGet**](RealEstateAvailabilityApi.md#realEstateAvailabilityGet) | **GET** /real-estate-availability | get all real-estate-availability by pagination
[**realEstateAvailabilityIdDelete**](RealEstateAvailabilityApi.md#realEstateAvailabilityIdDelete) | **DELETE** /real-estate-availability/{Id} | Destroy a real-estate-availability by ID
[**realEstateAvailabilityIdGet**](RealEstateAvailabilityApi.md#realEstateAvailabilityIdGet) | **GET** /real-estate-availability/{Id} | get a real-estate-availability by ID
[**realEstateAvailabilityPatch**](RealEstateAvailabilityApi.md#realEstateAvailabilityPatch) | **PATCH** /real-estate-availability | update real-estate-availability
[**realEstateAvailabilityPost**](RealEstateAvailabilityApi.md#realEstateAvailabilityPost) | **POST** /real-estate-availability | create real-estate-availability


# **realEstateAvailabilityGet**
> List<RealEstateAvailabilityPagination> realEstateAvailabilityGet(where, fields, order, offset, limit)

get all real-estate-availability by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateAvailabilityApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstateAvailabilityGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateAvailabilityApi->realEstateAvailabilityGet: $e\n");
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

[**List<RealEstateAvailabilityPagination>**](RealEstateAvailabilityPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateAvailabilityIdDelete**
> ApiResponse realEstateAvailabilityIdDelete(id)

Destroy a real-estate-availability by ID

delete a real-estate-availability by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateAvailabilityApi();
var id = 789; // int | ID of real-estate-availability to delete

try { 
    var result = api_instance.realEstateAvailabilityIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateAvailabilityApi->realEstateAvailabilityIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-availability to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateAvailabilityIdGet**
> RealEstateAvailability realEstateAvailabilityIdGet(id)

get a real-estate-availability by ID

get a real-estate-availability by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateAvailabilityApi();
var id = 789; // int | ID of real-estate-availability to return

try { 
    var result = api_instance.realEstateAvailabilityIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateAvailabilityApi->realEstateAvailabilityIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-availability to return | 

### Return type

[**RealEstateAvailability**](RealEstateAvailability.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateAvailabilityPatch**
> ApiResponse realEstateAvailabilityPatch(body)

update real-estate-availability

update real-estate-availability

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateAvailabilityApi();
var body = new RealEstateAvailability(); // RealEstateAvailability | create real-estate-availability

try { 
    var result = api_instance.realEstateAvailabilityPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateAvailabilityApi->realEstateAvailabilityPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateAvailability**](RealEstateAvailability.md)| create real-estate-availability | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateAvailabilityPost**
> ApiResponse realEstateAvailabilityPost(body)

create real-estate-availability

create real-estate-availability

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateAvailabilityApi();
var body = new RealEstateAvailability(); // RealEstateAvailability | create real-estate-availability

try { 
    var result = api_instance.realEstateAvailabilityPost(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateAvailabilityApi->realEstateAvailabilityPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateAvailability**](RealEstateAvailability.md)| create real-estate-availability | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

