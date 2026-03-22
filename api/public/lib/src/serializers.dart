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
import 'package:public_openapi/src/date_serializer.dart';
import 'package:public_openapi/src/model/date.dart';

import 'package:public_openapi/src/model/ai_recommendation_response.dart';
import 'package:public_openapi/src/model/ai_recommendation_response_api_success_response.dart';
import 'package:public_openapi/src/model/api_error_detail.dart';
import 'package:public_openapi/src/model/api_failure_response.dart';
import 'package:public_openapi/src/model/boolean_api_success_response.dart';
import 'package:public_openapi/src/model/category_group_response.dart';
import 'package:public_openapi/src/model/category_group_response_list_api_success_response.dart';
import 'package:public_openapi/src/model/category_summary_response.dart';
import 'package:public_openapi/src/model/change_password_command.dart';
import 'package:public_openapi/src/model/create_order_item_request.dart';
import 'package:public_openapi/src/model/create_order_request.dart';
import 'package:public_openapi/src/model/create_pay_os_link_command.dart';
import 'package:public_openapi/src/model/generate_otp_command.dart';
import 'package:public_openapi/src/model/gift_box.dart';
import 'package:public_openapi/src/model/gift_item.dart';
import 'package:public_openapi/src/model/gift_set_includes_response.dart';
import 'package:public_openapi/src/model/gift_set_item_response.dart';
import 'package:public_openapi/src/model/google_login_command.dart';
import 'package:public_openapi/src/model/guid_api_success_response.dart';
import 'package:public_openapi/src/model/login_command.dart';
import 'package:public_openapi/src/model/login_response.dart';
import 'package:public_openapi/src/model/login_response_api_success_response.dart';
import 'package:public_openapi/src/model/product_detail_response.dart';
import 'package:public_openapi/src/model/product_detail_response_api_success_response.dart';
import 'package:public_openapi/src/model/product_list_response.dart';
import 'package:public_openapi/src/model/product_list_response_i_enumerable_api_success_response.dart';
import 'package:public_openapi/src/model/product_type.dart';
import 'package:public_openapi/src/model/profile_response.dart';
import 'package:public_openapi/src/model/profile_response_api_success_response.dart';
import 'package:public_openapi/src/model/recommended_gift_set.dart';
import 'package:public_openapi/src/model/refresh_token_command.dart';
import 'package:public_openapi/src/model/register_command.dart';
import 'package:public_openapi/src/model/send_consultation_message_command.dart';
import 'package:public_openapi/src/model/set_password_command.dart';
import 'package:public_openapi/src/model/start_consultation_command.dart';
import 'package:public_openapi/src/model/string_api_success_response.dart';
import 'package:public_openapi/src/model/string_i_enumerable_api_success_response.dart';
import 'package:public_openapi/src/model/theme_collection_dto.dart';
import 'package:public_openapi/src/model/theme_collection_dto_i_enumerable_api_success_response.dart';
import 'package:public_openapi/src/model/update_profile_command.dart';
import 'package:public_openapi/src/model/user_response.dart';
import 'package:public_openapi/src/model/user_response_api_success_response.dart';
import 'package:public_openapi/src/model/verify_account_command.dart';
import 'package:public_openapi/src/model/webhook_data.dart';
import 'package:public_openapi/src/model/webhook_type.dart';

part 'serializers.g.dart';

@SerializersFor([
  AiRecommendationResponse,
  AiRecommendationResponseApiSuccessResponse,
  ApiErrorDetail,
  ApiFailureResponse,
  BooleanApiSuccessResponse,
  CategoryGroupResponse,
  CategoryGroupResponseListApiSuccessResponse,
  CategorySummaryResponse,
  ChangePasswordCommand,
  CreateOrderItemRequest,
  CreateOrderRequest,
  CreatePayOsLinkCommand,
  GenerateOtpCommand,
  GiftBox,
  GiftItem,
  GiftSetIncludesResponse,
  GiftSetItemResponse,
  GoogleLoginCommand,
  GuidApiSuccessResponse,
  LoginCommand,
  LoginResponse,
  LoginResponseApiSuccessResponse,
  ProductDetailResponse,
  ProductDetailResponseApiSuccessResponse,
  ProductListResponse,
  ProductListResponseIEnumerableApiSuccessResponse,
  ProductType,
  ProfileResponse,
  ProfileResponseApiSuccessResponse,
  RecommendedGiftSet,
  RefreshTokenCommand,
  RegisterCommand,
  SendConsultationMessageCommand,
  SetPasswordCommand,
  StartConsultationCommand,
  StringApiSuccessResponse,
  StringIEnumerableApiSuccessResponse,
  ThemeCollectionDto,
  ThemeCollectionDtoIEnumerableApiSuccessResponse,
  UpdateProfileCommand,
  UserResponse,
  UserResponseApiSuccessResponse,
  VerifyAccountCommand,
  WebhookData,
  WebhookType,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
