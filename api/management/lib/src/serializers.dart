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
import 'package:management_openapi/src/date_serializer.dart';
import 'package:management_openapi/src/model/date.dart';

import 'package:management_openapi/src/model/api_error_detail.dart';
import 'package:management_openapi/src/model/api_failure_response.dart';
import 'package:management_openapi/src/model/boolean_api_success_response.dart';
import 'package:management_openapi/src/model/category_group_response.dart';
import 'package:management_openapi/src/model/category_group_response_list_api_success_response.dart';
import 'package:management_openapi/src/model/category_response.dart';
import 'package:management_openapi/src/model/category_response_api_success_response.dart';
import 'package:management_openapi/src/model/category_summary_response.dart';
import 'package:management_openapi/src/model/category_summary_response_i_enumerable_api_success_response.dart';
import 'package:management_openapi/src/model/category_summary_response_paged_result.dart';
import 'package:management_openapi/src/model/category_summary_response_paged_result_api_success_response.dart';
import 'package:management_openapi/src/model/change_password_command.dart';
import 'package:management_openapi/src/model/create_category_command.dart';
import 'package:management_openapi/src/model/feedback_response.dart';
import 'package:management_openapi/src/model/feedback_response_paged_result.dart';
import 'package:management_openapi/src/model/feedback_response_paged_result_api_success_response.dart';
import 'package:management_openapi/src/model/generate_otp_command.dart';
import 'package:management_openapi/src/model/gift_set.dart';
import 'package:management_openapi/src/model/gift_set_item.dart';
import 'package:management_openapi/src/model/google_login_command.dart';
import 'package:management_openapi/src/model/image_gift.dart';
import 'package:management_openapi/src/model/login_command.dart';
import 'package:management_openapi/src/model/login_response.dart';
import 'package:management_openapi/src/model/login_response_api_success_response.dart';
import 'package:management_openapi/src/model/order_list_response.dart';
import 'package:management_openapi/src/model/order_list_response_paged_result.dart';
import 'package:management_openapi/src/model/order_list_response_paged_result_api_success_response.dart';
import 'package:management_openapi/src/model/order_status.dart';
import 'package:management_openapi/src/model/pagination_metadata.dart';
import 'package:management_openapi/src/model/payment_method.dart';
import 'package:management_openapi/src/model/product_detail_response.dart';
import 'package:management_openapi/src/model/product_detail_response_api_success_response.dart';
import 'package:management_openapi/src/model/product_list_response.dart';
import 'package:management_openapi/src/model/product_list_response_paged_result.dart';
import 'package:management_openapi/src/model/product_list_response_paged_result_api_success_response.dart';
import 'package:management_openapi/src/model/product_type.dart';
import 'package:management_openapi/src/model/profile_response.dart';
import 'package:management_openapi/src/model/profile_response_api_success_response.dart';
import 'package:management_openapi/src/model/refresh_token_command.dart';
import 'package:management_openapi/src/model/set_password_command.dart';
import 'package:management_openapi/src/model/string_api_success_response.dart';
import 'package:management_openapi/src/model/string_i_enumerable_api_success_response.dart';
import 'package:management_openapi/src/model/theme_collection_response.dart';
import 'package:management_openapi/src/model/theme_collection_response_i_enumerable_api_success_response.dart';
import 'package:management_openapi/src/model/update_category_command.dart';
import 'package:management_openapi/src/model/update_order_status_command.dart';
import 'package:management_openapi/src/model/update_profile_command.dart';
import 'package:management_openapi/src/model/verify_account_command.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApiErrorDetail,
  ApiFailureResponse,
  BooleanApiSuccessResponse,
  CategoryGroupResponse,
  CategoryGroupResponseListApiSuccessResponse,
  CategoryResponse,
  CategoryResponseApiSuccessResponse,
  CategorySummaryResponse,
  CategorySummaryResponseIEnumerableApiSuccessResponse,
  CategorySummaryResponsePagedResult,
  CategorySummaryResponsePagedResultApiSuccessResponse,
  ChangePasswordCommand,
  CreateCategoryCommand,
  FeedbackResponse,
  FeedbackResponsePagedResult,
  FeedbackResponsePagedResultApiSuccessResponse,
  GenerateOtpCommand,
  GiftSet,
  GiftSetItem,
  GoogleLoginCommand,
  ImageGift,
  LoginCommand,
  LoginResponse,
  LoginResponseApiSuccessResponse,
  OrderListResponse,
  OrderListResponsePagedResult,
  OrderListResponsePagedResultApiSuccessResponse,
  OrderStatus,
  PaginationMetadata,
  PaymentMethod,
  ProductDetailResponse,
  ProductDetailResponseApiSuccessResponse,
  ProductListResponse,
  ProductListResponsePagedResult,
  ProductListResponsePagedResultApiSuccessResponse,
  ProductType,
  ProfileResponse,
  ProfileResponseApiSuccessResponse,
  RefreshTokenCommand,
  SetPasswordCommand,
  StringApiSuccessResponse,
  StringIEnumerableApiSuccessResponse,
  ThemeCollectionResponse,
  ThemeCollectionResponseIEnumerableApiSuccessResponse,
  UpdateCategoryCommand,
  UpdateOrderStatusCommand,
  UpdateProfileCommand,
  VerifyAccountCommand,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GiftSetItem)]),
        () => ListBuilder<GiftSetItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ImageGift)]),
        () => ListBuilder<ImageGift>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
