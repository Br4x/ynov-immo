# swagger.api.RealEstateImageApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realEstateImageGet**](RealEstateImageApi.md#realEstateImageGet) | **GET** /real-estate-image | get all real-estate-image by pagination
[**realEstateImageIdDelete**](RealEstateImageApi.md#realEstateImageIdDelete) | **DELETE** /real-estate-image/{Id} | Destroy a real-estate-image by ID
[**realEstateImageIdGet**](RealEstateImageApi.md#realEstateImageIdGet) | **GET** /real-estate-image/{Id} | get a real-estate-image by ID
[**realEstateImagePatch**](RealEstateImageApi.md#realEstateImagePatch) | **PATCH** /real-estate-image | update real-estate-image
[**realEstateImagePost**](RealEstateImageApi.md#realEstateImagePost) | **POST** /real-estate-image | create real-estate-image


# **realEstateImageGet**
> List<RealEstateImagePagination> realEstateImageGet(where, fields, order, offset, limit)

get all real-estate-image by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateImageApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstateImageGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateImageApi->realEstateImageGet: $e\n");
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

[**List<RealEstateImagePagination>**](RealEstateImagePagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateImageIdDelete**
> ApiResponse realEstateImageIdDelete(id)

Destroy a real-estate-image by ID

delete a real-estate-image by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateImageApi();
var id = 789; // int | ID of real-estate-image to delete

try { 
    var result = api_instance.realEstateImageIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateImageApi->realEstateImageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-image to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateImageIdGet**
> RealEstateImage realEstateImageIdGet(id)

get a real-estate-image by ID

get a real-estate-image by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateImageApi();
var id = 789; // int | ID of real-estate-image to return

try { 
    var result = api_instance.realEstateImageIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateImageApi->realEstateImageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of real-estate-image to return | 

### Return type

[**RealEstateImage**](RealEstateImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateImagePatch**
> ApiResponse realEstateImagePatch(body)

update real-estate-image

update real-estate-image

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateImageApi();
var body = new RealEstateImage(); // RealEstateImage | create real-estate-image

try { 
    var result = api_instance.realEstateImagePatch(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateImageApi->realEstateImagePatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateImage**](RealEstateImage.md)| create real-estate-image | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realEstateImagePost**
> ApiResponse realEstateImagePost(body)

create real-estate-image

create real-estate-image

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RealEstateImageApi();
var body = new RealEstateImage(); // RealEstateImage | create real-estate-image

try { 
    var result = api_instance.realEstateImagePost(body);
    print(result);
} catch (e) {
    print("Exception when calling RealEstateImageApi->realEstateImagePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RealEstateImage**](RealEstateImage.md)| create real-estate-image | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

