# swagger.api.AuthApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginPost**](AuthApi.md#loginPost) | **POST** /login | login by user


# **loginPost**
> UserAuth loginPost(body)

login by user

login by user

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthApi();
var body = new User(); // User | create user

try { 
    var result = api_instance.loginPost(body);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->loginPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)| create user | 

### Return type

[**UserAuth**](UserAuth.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

