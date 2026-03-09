//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:public_openapi/src/serializers.dart';
import 'package:public_openapi/src/auth/api_key_auth.dart';
import 'package:public_openapi/src/auth/basic_auth.dart';
import 'package:public_openapi/src/auth/bearer_auth.dart';
import 'package:public_openapi/src/auth/oauth.dart';
import 'package:public_openapi/src/api/account_api.dart';
import 'package:public_openapi/src/api/auth_api.dart';
import 'package:public_openapi/src/api/consultation_api.dart';
import 'package:public_openapi/src/api/order_api.dart';
import 'package:public_openapi/src/api/payment_api.dart';
import 'package:public_openapi/src/api/public_category_api.dart';
import 'package:public_openapi/src/api/public_product_api.dart';

class PublicOpenapi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  PublicOpenapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AccountApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountApi getAccountApi() {
    return AccountApi(dio, serializers);
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get ConsultationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsultationApi getConsultationApi() {
    return ConsultationApi(dio, serializers);
  }

  /// Get OrderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrderApi getOrderApi() {
    return OrderApi(dio, serializers);
  }

  /// Get PaymentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PaymentApi getPaymentApi() {
    return PaymentApi(dio, serializers);
  }

  /// Get PublicCategoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PublicCategoryApi getPublicCategoryApi() {
    return PublicCategoryApi(dio, serializers);
  }

  /// Get PublicProductApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PublicProductApi getPublicProductApi() {
    return PublicProductApi(dio, serializers);
  }
}
