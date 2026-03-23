import 'package:dio/dio.dart';
import 'package:prm_project/core/configs/environment.dart';
import 'package:prm_project/core/interceptor/auth_interceptor.dart';
import 'package:prm_project/core/interceptor/error_interceptor.dart';
import 'package:public_openapi/public_openapi.dart';

class ApiClient {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
    ),
  )
    ..interceptors.add(AuthInterceptor())
    ..interceptors.add(ErrorInterceptor(_dio));

  static final PublicOpenapi openApi = PublicOpenapi(
    dio: _dio,
    basePathOverride: Environment.apiUrl,
  );
}