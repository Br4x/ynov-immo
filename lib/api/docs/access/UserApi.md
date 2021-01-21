# swagger.api.UserApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userGet**](UserApi.md#userGet) | **GET** /user | get all user by pagination
[**userIdDelete**](UserApi.md#userIdDelete) | **DELETE** /user/{Id} | Destroy a user by ID
[**userIdGet**](UserApi.md#userIdGet) | **GET** /user/{Id} | get a user by ID
[**userPatch**](UserApi.md#userPatch) | **PATCH** /user | update user
[**userPost**](UserApi.md#userPost) | **POST** /user | create user


# **userGet**
> List<UserPagination> userGet(where, fields, order, offset, limit)

get all user by pagination



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
var fields = fields_example; // String | {$tableColumn},{$tableColumn}... 
var order = order_example; // String | eg: id desc, name desc
var offset = 56; // int | sql offset eg: 10
var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.userGet(where, fields, order, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGet: $e\n");
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

[**List<UserPagination>**](UserPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userIdDelete**
> ApiResponse userIdDelete(id)

Destroy a user by ID

delete a user by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var id = 789; // int | ID of user to delete

try { 
    var result = api_instance.userIdDelete(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of user to delete | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userIdGet**
> User userIdGet(id)

get a user by ID

get a user by ID

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var id = 789; // int | ID of user to return

try { 
    var result = api_instance.userIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of user to return | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPatch**
> ApiResponse userPatch(body)

update user

update user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new User(); // User | create user

try { 
    var result = api_instance.userPatch(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)| create user | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPost**
> ApiResponse userPost(body)

create user

create user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new User(); // User | create user

try { 
    var result = api_instance.userPost(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)| create user | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

