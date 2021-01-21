# Ynov API

## Getting Started

```dart
import 'package:swagger/api.dart';


var api_instance = new AuthApi();
var user = new User(email: "admin@admin.com", password: "admin"); // User | create user

try {
    var result = api_instance.loginPost(user);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->loginPost: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://ynov-api.ew.r.appspot.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthApi* | [**loginPost**](access//AuthApi.md#loginpost) | **POST** /login | login by user
*ChatApi* | [**chatGet**](access//ChatApi.md#chatget) | **GET** /chat | get all chat by pagination
*ChatApi* | [**chatIdDelete**](access//ChatApi.md#chatiddelete) | **DELETE** /chat/{Id} | Destroy a chat by ID
*ChatApi* | [**chatIdGet**](access//ChatApi.md#chatidget) | **GET** /chat/{Id} | get a chat by ID
*ChatApi* | [**chatPatch**](access//ChatApi.md#chatpatch) | **PATCH** /chat | update chat
*ChatApi* | [**chatPost**](access//ChatApi.md#chatpost) | **POST** /chat | create chat
*ChatCommentApi* | [**chatCommentGet**](access//ChatCommentApi.md#chatcommentget) | **GET** /chat-comment | get all chat-comment by pagination
*ChatCommentApi* | [**chatCommentIdDelete**](access//ChatCommentApi.md#chatcommentiddelete) | **DELETE** /chat-comment/{Id} | Destroy a chat-comment by ID
*ChatCommentApi* | [**chatCommentIdGet**](access//ChatCommentApi.md#chatcommentidget) | **GET** /chat-comment/{Id} | get a chat-comment by ID
*ChatCommentApi* | [**chatCommentPatch**](access//ChatCommentApi.md#chatcommentpatch) | **PATCH** /chat-comment | update chat-comment
*ChatCommentApi* | [**chatCommentPost**](access//ChatCommentApi.md#chatcommentpost) | **POST** /chat-comment | create chat-comment
*CitiesDistrictApi* | [**citiesDistrictGet**](access//CitiesDistrictApi.md#citiesdistrictget) | **GET** /cities-district | get all cities-district by pagination
*CitiesDistrictApi* | [**citiesDistrictIdDelete**](access//CitiesDistrictApi.md#citiesdistrictiddelete) | **DELETE** /cities-district/{Id} | Destroy a cities-district by ID
*CitiesDistrictApi* | [**citiesDistrictIdGet**](access//CitiesDistrictApi.md#citiesdistrictidget) | **GET** /cities-district/{Id} | get a cities-district by ID
*CitiesDistrictApi* | [**citiesDistrictPatch**](access//CitiesDistrictApi.md#citiesdistrictpatch) | **PATCH** /cities-district | update cities-district
*CitiesDistrictApi* | [**citiesDistrictPost**](access//CitiesDistrictApi.md#citiesdistrictpost) | **POST** /cities-district | create cities-district
*CityApi* | [**cityGet**](access//CityApi.md#cityget) | **GET** /city | get all city by pagination
*CityApi* | [**cityIdDelete**](access//CityApi.md#cityiddelete) | **DELETE** /city/{Id} | Destroy a city by ID
*CityApi* | [**cityIdGet**](access//CityApi.md#cityidget) | **GET** /city/{Id} | get a city by ID
*CityApi* | [**cityPatch**](access//CityApi.md#citypatch) | **PATCH** /city | update city
*CityApi* | [**cityPost**](access//CityApi.md#citypost) | **POST** /city | create city
*RealEstateApi* | [**realEstateGet**](access//RealEstateApi.md#realestateget) | **GET** /real-estate | get all real-estate by pagination
*RealEstateApi* | [**realEstateIdDelete**](access//RealEstateApi.md#realestateiddelete) | **DELETE** /real-estate/{Id} | Destroy a real-estate by ID
*RealEstateApi* | [**realEstateIdGet**](access//RealEstateApi.md#realestateidget) | **GET** /real-estate/{Id} | get a real-estate by ID
*RealEstateApi* | [**realEstatePatch**](access//RealEstateApi.md#realestatepatch) | **PATCH** /real-estate | update real-estate
*RealEstateApi* | [**realEstatePost**](access//RealEstateApi.md#realestatepost) | **POST** /real-estate | create real-estate
*RealEstateAvailabilityApi* | [**realEstateAvailabilityGet**](access//RealEstateAvailabilityApi.md#realestateavailabilityget) | **GET** /real-estate-availability | get all real-estate-availability by pagination
*RealEstateAvailabilityApi* | [**realEstateAvailabilityIdDelete**](access//RealEstateAvailabilityApi.md#realestateavailabilityiddelete) | **DELETE** /real-estate-availability/{Id} | Destroy a real-estate-availability by ID
*RealEstateAvailabilityApi* | [**realEstateAvailabilityIdGet**](access//RealEstateAvailabilityApi.md#realestateavailabilityidget) | **GET** /real-estate-availability/{Id} | get a real-estate-availability by ID
*RealEstateAvailabilityApi* | [**realEstateAvailabilityPatch**](access//RealEstateAvailabilityApi.md#realestateavailabilitypatch) | **PATCH** /real-estate-availability | update real-estate-availability
*RealEstateAvailabilityApi* | [**realEstateAvailabilityPost**](access//RealEstateAvailabilityApi.md#realestateavailabilitypost) | **POST** /real-estate-availability | create real-estate-availability
*RealEstateFeedbackApi* | [**realEstateFeedbackGet**](access//RealEstateFeedbackApi.md#realestatefeedbackget) | **GET** /real-estate-feedback | get all real-estate-feedback by pagination
*RealEstateFeedbackApi* | [**realEstateFeedbackIdDelete**](access//RealEstateFeedbackApi.md#realestatefeedbackiddelete) | **DELETE** /real-estate-feedback/{Id} | Destroy a real-estate-feedback by ID
*RealEstateFeedbackApi* | [**realEstateFeedbackIdGet**](access//RealEstateFeedbackApi.md#realestatefeedbackidget) | **GET** /real-estate-feedback/{Id} | get a real-estate-feedback by ID
*RealEstateFeedbackApi* | [**realEstateFeedbackPatch**](access//RealEstateFeedbackApi.md#realestatefeedbackpatch) | **PATCH** /real-estate-feedback | update real-estate-feedback
*RealEstateFeedbackApi* | [**realEstateFeedbackPost**](access//RealEstateFeedbackApi.md#realestatefeedbackpost) | **POST** /real-estate-feedback | create real-estate-feedback
*RealEstateImageApi* | [**realEstateImageGet**](access//RealEstateImageApi.md#realestateimageget) | **GET** /real-estate-image | get all real-estate-image by pagination
*RealEstateImageApi* | [**realEstateImageIdDelete**](access//RealEstateImageApi.md#realestateimageiddelete) | **DELETE** /real-estate-image/{Id} | Destroy a real-estate-image by ID
*RealEstateImageApi* | [**realEstateImageIdGet**](access//RealEstateImageApi.md#realestateimageidget) | **GET** /real-estate-image/{Id} | get a real-estate-image by ID
*RealEstateImageApi* | [**realEstateImagePatch**](access//RealEstateImageApi.md#realestateimagepatch) | **PATCH** /real-estate-image | update real-estate-image
*RealEstateImageApi* | [**realEstateImagePost**](access//RealEstateImageApi.md#realestateimagepost) | **POST** /real-estate-image | create real-estate-image
*RealEstatePropalApi* | [**realEstatePropalGet**](access//RealEstatePropalApi.md#realestatepropalget) | **GET** /real-estate-propal | get all real-estate-propal by pagination
*RealEstatePropalApi* | [**realEstatePropalIdDelete**](access//RealEstatePropalApi.md#realestatepropaliddelete) | **DELETE** /real-estate-propal/{Id} | Destroy a real-estate-propal by ID
*RealEstatePropalApi* | [**realEstatePropalIdGet**](access//RealEstatePropalApi.md#realestatepropalidget) | **GET** /real-estate-propal/{Id} | get a real-estate-propal by ID
*RealEstatePropalApi* | [**realEstatePropalPatch**](access//RealEstatePropalApi.md#realestatepropalpatch) | **PATCH** /real-estate-propal | update real-estate-propal
*RealEstatePropalApi* | [**realEstatePropalPost**](access//RealEstatePropalApi.md#realestatepropalpost) | **POST** /real-estate-propal | create real-estate-propal
*RealEstatePropalsBuyerIndicationApi* | [**realEstatePropalsBuyerIndicationGet**](access//RealEstatePropalsBuyerIndicationApi.md#realestatepropalsbuyerindicationget) | **GET** /real-estate-propals-buyer-indication | get all real-estate-propals-buyer-indication by pagination
*RealEstatePropalsBuyerIndicationApi* | [**realEstatePropalsBuyerIndicationIdDelete**](access//RealEstatePropalsBuyerIndicationApi.md#realestatepropalsbuyerindicationiddelete) | **DELETE** /real-estate-propals-buyer-indication/{Id} | Destroy a real-estate-propals-buyer-indication by ID
*RealEstatePropalsBuyerIndicationApi* | [**realEstatePropalsBuyerIndicationIdGet**](access//RealEstatePropalsBuyerIndicationApi.md#realestatepropalsbuyerindicationidget) | **GET** /real-estate-propals-buyer-indication/{Id} | get a real-estate-propals-buyer-indication by ID
*RealEstatePropalsBuyerIndicationApi* | [**realEstatePropalsBuyerIndicationPatch**](access//RealEstatePropalsBuyerIndicationApi.md#realestatepropalsbuyerindicationpatch) | **PATCH** /real-estate-propals-buyer-indication | update real-estate-propals-buyer-indication
*RealEstatePropalsBuyerIndicationApi* | [**realEstatePropalsBuyerIndicationPost**](access//RealEstatePropalsBuyerIndicationApi.md#realestatepropalsbuyerindicationpost) | **POST** /real-estate-propals-buyer-indication | create real-estate-propals-buyer-indication
*RealEstateVisitApi* | [**realEstateVisitGet**](access//RealEstateVisitApi.md#realestatevisitget) | **GET** /real-estate-visit | get all real-estate-visit by pagination
*RealEstateVisitApi* | [**realEstateVisitIdDelete**](access//RealEstateVisitApi.md#realestatevisitiddelete) | **DELETE** /real-estate-visit/{Id} | Destroy a real-estate-visit by ID
*RealEstateVisitApi* | [**realEstateVisitIdGet**](access//RealEstateVisitApi.md#realestatevisitidget) | **GET** /real-estate-visit/{Id} | get a real-estate-visit by ID
*RealEstateVisitApi* | [**realEstateVisitPatch**](access//RealEstateVisitApi.md#realestatevisitpatch) | **PATCH** /real-estate-visit | update real-estate-visit
*RealEstateVisitApi* | [**realEstateVisitPost**](access//RealEstateVisitApi.md#realestatevisitpost) | **POST** /real-estate-visit | create real-estate-visit
*UserApi* | [**userGet**](access//UserApi.md#userget) | **GET** /user | get all user by pagination
*UserApi* | [**userIdDelete**](access//UserApi.md#useriddelete) | **DELETE** /user/{Id} | Destroy a user by ID
*UserApi* | [**userIdGet**](access//UserApi.md#useridget) | **GET** /user/{Id} | get a user by ID
*UserApi* | [**userPatch**](access//UserApi.md#userpatch) | **PATCH** /user | update user
*UserApi* | [**userPost**](access//UserApi.md#userpost) | **POST** /user | create user


## Documentation For Models

 - [ApiResponse](models//ApiResponse.md)
 - [Chat](models//Chat.md)
 - [ChatComment](models//ChatComment.md)
 - [ChatCommentPagination](models//ChatCommentPagination.md)
 - [ChatPagination](models//ChatPagination.md)
 - [CitiesDistrict](models//CitiesDistrict.md)
 - [CitiesDistrictPagination](models//CitiesDistrictPagination.md)
 - [City](models//City.md)
 - [CityPagination](models//CityPagination.md)
 - [RealEstate](models//RealEstate.md)
 - [RealEstateAvailability](models//RealEstateAvailability.md)
 - [RealEstateAvailabilityPagination](models//RealEstateAvailabilityPagination.md)
 - [RealEstateFeedback](models//RealEstateFeedback.md)
 - [RealEstateFeedbackPagination](models//RealEstateFeedbackPagination.md)
 - [RealEstateImage](models//RealEstateImage.md)
 - [RealEstateImagePagination](models//RealEstateImagePagination.md)
 - [RealEstatePagination](models//RealEstatePagination.md)
 - [RealEstatePropal](models//RealEstatePropal.md)
 - [RealEstatePropalPagination](models//RealEstatePropalPagination.md)
 - [RealEstatePropalsBuyerIndication](models//RealEstatePropalsBuyerIndication.md)
 - [RealEstatePropalsBuyerIndicationPagination](models//RealEstatePropalsBuyerIndicationPagination.md)
 - [RealEstateVisit](models//RealEstateVisit.md)
 - [RealEstateVisitPagination](models//RealEstateVisitPagination.md)
 - [User](models//User.md)
 - [UserAuth](models//UserAuth.md)
 - [UserPagination](models//UserPagination.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




