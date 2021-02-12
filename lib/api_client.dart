part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new IOClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<(.*)>$');

  ApiClient({this.basePath: "https://ynov-api.ew.r.appspot.com/api/v1"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ApiResponse':
          return new ApiResponse.fromJson(value);
        case 'Chat':
          return new Chat.fromJson(value);
        case 'ChatComment':
          return new ChatComment.fromJson(value);
        case 'ChatCommentPagination':
          return new ChatCommentPagination.fromJson(value);
        case 'ChatPagination':
          return new ChatPagination.fromJson(value);
        case 'CitiesDistrict':
          return new CitiesDistrict.fromJson(value);
        case 'CitiesDistrictPagination':
          return new CitiesDistrictPagination.fromJson(value);
        case 'City':
          return new City.fromJson(value);
        case 'CityPagination':
          return new CityPagination.fromJson(value);
        case 'RealEstate':
          return new RealEstate.fromJson(value);
        case 'RealEstateAvailability':
          return new RealEstateAvailability.fromJson(value);
        case 'RealEstateAvailabilityPagination':
          return new RealEstateAvailabilityPagination.fromJson(value);
        case 'RealEstateFeedback':
          return new RealEstateFeedback.fromJson(value);
        case 'RealEstateFeedbackPagination':
          return new RealEstateFeedbackPagination.fromJson(value);
        case 'RealEstateImage':
          return new RealEstateImage.fromJson(value);
        case 'RealEstateImagePagination':
          return new RealEstateImagePagination.fromJson(value);
        case 'RealEstatePagination':
          return new RealEstatePagination.fromJson(value);
        case 'RealEstatePropal':
          return new RealEstatePropal.fromJson(value);
        case 'RealEstatePropalPagination':
          return new RealEstatePropalPagination.fromJson(value);
        case 'RealEstatePropalsBuyerIndication':
          return new RealEstatePropalsBuyerIndication.fromJson(value);
        case 'RealEstatePropalsBuyerIndicationPagination':
          return new RealEstatePropalsBuyerIndicationPagination.fromJson(value);
        case 'RealEstateVisit':
          return new RealEstateVisit.fromJson(value);
        case 'RealEstateVisitPagination':
          return new RealEstateVisitPagination.fromJson(value);
        case 'User':
          return new User.fromJson(value);
        case 'UserAuth':
          return new UserAuth.fromJson(value);
        case 'UserPagination':
          return new UserPagination.fromJson(value);
        default:
          {
            Match match;
            value = value['data'];
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
