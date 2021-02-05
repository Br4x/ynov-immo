library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart';
import 'package:flutter/foundation.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/auth_api.dart';
part 'api/chat_api.dart';
part 'api/chat_comment_api.dart';
part 'api/cities_district_api.dart';
part 'api/city_api.dart';
part 'api/real_estate_api.dart';
part 'api/real_estate_availability_api.dart';
part 'api/real_estate_feedback_api.dart';
part 'api/real_estate_image_api.dart';
part 'api/real_estate_propal_api.dart';
part 'api/real_estate_propals_buyer_indication_api.dart';
part 'api/real_estate_visit_api.dart';
part 'api/user_api.dart';

part 'model/api_response.dart';
part 'model/chat.dart';
part 'model/chat_comment.dart';
part 'model/chat_comment_pagination.dart';
part 'model/chat_pagination.dart';
part 'model/cities_district.dart';
part 'model/cities_district_pagination.dart';
part 'model/city.dart';
part 'model/city_pagination.dart';
part 'model/real_estate.dart';
part 'model/real_estate_availability.dart';
part 'model/real_estate_availability_pagination.dart';
part 'model/real_estate_feedback.dart';
part 'model/real_estate_feedback_pagination.dart';
part 'model/real_estate_image.dart';
part 'model/real_estate_image_pagination.dart';
part 'model/real_estate_pagination.dart';
part 'model/real_estate_propal.dart';
part 'model/real_estate_propal_pagination.dart';
part 'model/real_estate_propals_buyer_indication.dart';
part 'model/real_estate_propals_buyer_indication_pagination.dart';
part 'model/real_estate_visit.dart';
part 'model/real_estate_visit_pagination.dart';
part 'model/user.dart';
part 'model/user_auth.dart';
part 'model/user_pagination.dart';


ApiClient defaultApiClient = new ApiClient();
