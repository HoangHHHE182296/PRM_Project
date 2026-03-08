//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/ai_recommendation_response.dart';
import 'package:openapi/src/model/ai_recommendation_response_api_success_response.dart';
import 'package:openapi/src/model/boolean_api_success_response.dart';
import 'package:openapi/src/model/category_summary_response.dart';
import 'package:openapi/src/model/category_summary_response_i_enumerable_api_success_response.dart';
import 'package:openapi/src/model/change_password_command.dart';
import 'package:openapi/src/model/consultation_chat_request.dart';
import 'package:openapi/src/model/create_order_item_request.dart';
import 'package:openapi/src/model/create_order_request.dart';
import 'package:openapi/src/model/create_pay_os_link_command.dart';
import 'package:openapi/src/model/generate_otp_command.dart';
import 'package:openapi/src/model/google_login_command.dart';
import 'package:openapi/src/model/guid_api_success_response.dart';
import 'package:openapi/src/model/login_command.dart';
import 'package:openapi/src/model/login_response.dart';
import 'package:openapi/src/model/login_response_api_success_response.dart';
import 'package:openapi/src/model/product_response.dart';
import 'package:openapi/src/model/product_response_paginated_list.dart';
import 'package:openapi/src/model/product_response_paginated_list_api_success_response.dart';
import 'package:openapi/src/model/profile_response.dart';
import 'package:openapi/src/model/profile_response_api_success_response.dart';
import 'package:openapi/src/model/recommended_box_dto.dart';
import 'package:openapi/src/model/refresh_token_command.dart';
import 'package:openapi/src/model/register_command.dart';
import 'package:openapi/src/model/set_password_command.dart';
import 'package:openapi/src/model/start_consultation_request.dart';
import 'package:openapi/src/model/string_api_success_response.dart';
import 'package:openapi/src/model/update_profile_command.dart';
import 'package:openapi/src/model/user_response.dart';
import 'package:openapi/src/model/user_response_api_success_response.dart';
import 'package:openapi/src/model/verify_account_command.dart';
import 'package:openapi/src/model/webhook_data.dart';
import 'package:openapi/src/model/webhook_type.dart';

part 'serializers.g.dart';

@SerializersFor([
  AiRecommendationResponse,
  AiRecommendationResponseApiSuccessResponse,
  BooleanApiSuccessResponse,
  CategorySummaryResponse,
  CategorySummaryResponseIEnumerableApiSuccessResponse,
  ChangePasswordCommand,
  ConsultationChatRequest,
  CreateOrderItemRequest,
  CreateOrderRequest,
  CreatePayOsLinkCommand,
  GenerateOtpCommand,
  GoogleLoginCommand,
  GuidApiSuccessResponse,
  LoginCommand,
  LoginResponse,
  LoginResponseApiSuccessResponse,
  ProductResponse,
  ProductResponsePaginatedList,
  ProductResponsePaginatedListApiSuccessResponse,
  ProfileResponse,
  ProfileResponseApiSuccessResponse,
  RecommendedBoxDto,
  RefreshTokenCommand,
  RegisterCommand,
  SetPasswordCommand,
  StartConsultationRequest,
  StringApiSuccessResponse,
  UpdateProfileCommand,
  UserResponse,
  UserResponseApiSuccessResponse,
  VerifyAccountCommand,
  WebhookData,
  WebhookType,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
