import 'package:dio/dio.dart';
import 'package:prm_project/core/configs/environment.dart';
import 'package:public_openapi/public_openapi.dart';

import 'package:prm_project/core/service/credential_service.dart';
import 'package:prm_project/core/di/injection.dart';

class ApiClient {
  static final PublicOpenapi openApi = _createOpenApi();

  static PublicOpenapi _createOpenApi() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Environment.apiUrl,
        connectTimeout: const Duration(milliseconds: 30000),
        receiveTimeout: const Duration(milliseconds: 30000),
      ),
    );

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        try {
          final token = sl<CredentialService>().credential?['accessToken'];
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
        } catch (e) {
          // ignore
        }
        return handler.next(options);
      },
    ));

    return PublicOpenapi(
      dio: dio,
      basePathOverride: Environment.apiUrl,
    );
  }
}
