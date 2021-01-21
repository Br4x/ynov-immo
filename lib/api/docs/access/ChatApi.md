# swagger.api.ChatApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatGet**](ChatApi.md#chatGet) | **GET** /chat | get all chat by pagination
[**chatIdDelete**](ChatApi.md#chatIdDelete) | **DELETE** /chat/{Id} | Destroy a chat by ID
[**chatIdGet**](ChatApi.md#chatIdGet) | **GET** /chat/{Id} | get a chat by ID
[**chatPatch**](ChatApi.md#chatPatch) | **PATCH** /chat | update chat
[**chatPost**](ChatApi.md#chatPost) | **POST** /chat | create chat


# **chatGet**
> List<ChatPagination> chatGet(where, fields, order, offset, limit)

get all chat by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.chatGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->chatGet: $e\n");
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

[**List<ChatPagination>**](ChatPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatIdDelete**
> ApiResponse chatIdDelete(id)

Destroy a chat by ID

delete a chat by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();
var id = 789; // int | ID of chat to delete

try { 
    var result = api_instance.chatIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->chatIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of chat to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatIdGet**
> Chat chatIdGet(id)

get a chat by ID

get a chat by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();
var id = 789; // int | ID of chat to return

try { 
    var result = api_instance.chatIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->chatIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of chat to return | 

### Return type

[**Chat**](Chat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatPatch**
> ApiResponse chatPatch(body)

update chat

update chat

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();
var body = new Chat(); // Chat | create chat

try { 
    var result = api_instance.chatPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->chatPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Chat**](Chat.md)| create chat | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatPost**
> ApiResponse chatPost(body)

create chat

create chat

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();
var body = new Chat(); // Chat | create chat

try { 
    var result = api_instance.chatPost(body);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->chatPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Chat**](Chat.md)| create chat | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

