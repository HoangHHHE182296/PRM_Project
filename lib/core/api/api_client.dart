import 'package:dio/dio.dart';
import 'package:prm_project/core/configs/environment.dart';
import 'package:prm_project/core/interceptor/auth_interceptor.dart';
import 'package:prm_project/core/interceptor/error_interceptor.dart';
import 'package:public_openapi/public_openapi.dart';

class ApiClient {
  static final Dio _dio = _createDio();

  static Dio get dio => _dio;

  static Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Environment.apiUrl,
        connectTimeout: const Duration(milliseconds: 30000),
        receiveTimeout: const Duration(milliseconds: 30000),
      ),
    );
    dio.interceptors.add(AuthInterceptor());
    dio.interceptors.add(ErrorInterceptor(dio));
    return dio;
  }

  static final PublicOpenapi openApi = PublicOpenapi(
    dio: _dio,
    basePathOverride: Environment.apiUrl,
  );
}
