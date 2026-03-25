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
import 'package:internal_openapi/lib/date_serializer.dart';
import 'package:internal_openapi/lib/model/date.dart';

import 'package:internal_openapi/lib/model/api_error_detail.dart';
import 'package:internal_openapi/lib/model/api_failure_response.dart';
import 'package:internal_openapi/lib/model/boolean_api_success_response.dart';
import 'package:internal_openapi/lib/model/category_group_response.dart';
import 'package:internal_openapi/lib/model/category_group_response_list_api_success_response.dart';
import 'package:internal_openapi/lib/model/category_response.dart';
import 'package:internal_openapi/lib/model/category_response_api_success_response.dart';
import 'package:internal_openapi/lib/model/category_summary_response.dart';
import 'package:internal_openapi/lib/model/category_summary_response_i_enumerable_api_success_response.dart';
import 'package:internal_openapi/lib/model/change_password_command.dart';
import 'package:internal_openapi/lib/model/create_category_command.dart';
import 'package:internal_openapi/lib/model/generate_otp_command.dart';
import 'package:internal_openapi/lib/model/gift_set.dart';
import 'package:internal_openapi/lib/model/gift_set_item.dart';
import 'package:internal_openapi/lib/model/google_login_command.dart';
import 'package:internal_openapi/lib/model/image_gift.dart';
import 'package:internal_openapi/lib/model/login_command.dart';
import 'package:internal_openapi/lib/model/login_response.dart';
import 'package:internal_openapi/lib/model/login_response_api_success_response.dart';
import 'package:internal_openapi/lib/model/order_list_response.dart';
import 'package:internal_openapi/lib/model/order_list_response_paged_result.dart';
import 'package:internal_openapi/lib/model/order_list_response_paged_result_api_success_response.dart';
import 'package:internal_openapi/lib/model/order_status.dart';
import 'package:internal_openapi/lib/model/pagination_metadata.dart';
import 'package:internal_openapi/lib/model/payment_method.dart';
import 'package:internal_openapi/lib/model/product_detail_response.dart';
import 'package:internal_openapi/lib/model/product_detail_response_api_success_response.dart';
import 'package:internal_openapi/lib/model/product_list_response.dart';
import 'package:internal_openapi/lib/model/product_list_response_paged_result.dart';
import 'package:internal_openapi/lib/model/product_list_response_paged_result_api_success_response.dart';
import 'package:internal_openapi/lib/model/product_type.dart';
import 'package:internal_openapi/lib/model/profile_response.dart';
import 'package:internal_openapi/lib/model/profile_response_api_success_response.dart';
import 'package:internal_openapi/lib/model/refresh_token_command.dart';
import 'package:internal_openapi/lib/model/set_password_command.dart';
import 'package:internal_openapi/lib/model/string_api_success_response.dart';
import 'package:internal_openapi/lib/model/string_i_enumerable_api_success_response.dart';
import 'package:internal_openapi/lib/model/theme_collection_response.dart';
import 'package:internal_openapi/lib/model/theme_collection_response_i_enumerable_api_success_response.dart';
import 'package:internal_openapi/lib/model/update_category_command.dart';
import 'package:internal_openapi/lib/model/update_profile_command.dart';
import 'package:internal_openapi/lib/model/verify_account_command.dart';

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
  ChangePasswordCommand,
  CreateCategoryCommand,
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
