# swagger.api.ChatCommentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatCommentGet**](ChatCommentApi.md#chatCommentGet) | **GET** /chat-comment | get all chat-comment by pagination
[**chatCommentIdDelete**](ChatCommentApi.md#chatCommentIdDelete) | **DELETE** /chat-comment/{Id} | Destroy a chat-comment by ID
[**chatCommentIdGet**](ChatCommentApi.md#chatCommentIdGet) | **GET** /chat-comment/{Id} | get a chat-comment by ID
[**chatCommentPatch**](ChatCommentApi.md#chatCommentPatch) | **PATCH** /chat-comment | update chat-comment
[**chatCommentPost**](ChatCommentApi.md#chatCommentPost) | **POST** /chat-comment | create chat-comment


# **chatCommentGet**
> List<ChatCommentPagination> chatCommentGet(where, fields, order, offset, limit)

get all chat-comment by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatCommentApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.chatCommentGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling ChatCommentApi->chatCommentGet: $e\n");
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

[**List<ChatCommentPagination>**](ChatCommentPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatCommentIdDelete**
> ApiResponse chatCommentIdDelete(id)

Destroy a chat-comment by ID

delete a chat-comment by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatCommentApi();
var id = 789; // int | ID of chat-comment to delete

try { 
    var result = api_instance.chatCommentIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling ChatCommentApi->chatCommentIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of chat-comment to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatCommentIdGet**
> ChatComment chatCommentIdGet(id)

get a chat-comment by ID

get a chat-comment by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatCommentApi();
var id = 789; // int | ID of chat-comment to return

try { 
    var result = api_instance.chatCommentIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling ChatCommentApi->chatCommentIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of chat-comment to return | 

### Return type

[**ChatComment**](ChatComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatCommentPatch**
> ApiResponse chatCommentPatch(body)

update chat-comment

update chat-comment

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatCommentApi();
var body = new ChatComment(); // ChatComment | create chat-comment

try { 
    var result = api_instance.chatCommentPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling ChatCommentApi->chatCommentPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChatComment**](ChatComment.md)| create chat-comment | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatCommentPost**
> ApiResponse chatCommentPost(body)

create chat-comment

create chat-comment

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatCommentApi();
var body = new ChatComment(); // ChatComment | create chat-comment

try { 
    var result = api_instance.chatCommentPost(body);
    print(result);
} catch (e) {
    print("Exception when calling ChatCommentApi->chatCommentPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChatComment**](ChatComment.md)| create chat-comment | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

