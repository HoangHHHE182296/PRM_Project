import 'package:dio/dio.dart';
import 'package:prm_project/environments/environment.dart';
import 'package:public_openapi/public_openapi.dart';

import 'package:dio/dio.dart';
import 'package:prm_project/core/auth/credential.service.dart';
import 'package:prm_project/environments/environment.dart';
import 'package:public_openapi/public_openapi.dart';

class ApiService {
  static final PublicOpenapi client = _initClient();

  static PublicOpenapi _initClient() {
    final dio = Dio(BaseOptions(
      baseUrl: Environment.apiUrl,
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
    ));

    // Thêm Interceptor để chặn mọi request và response
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Tự động nhét Token vào mọi API gọi đi
        final token = CredentialService().credential?['accessToken'];
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onError: (DioException e, handler) {
        // Bắt lỗi 401: Token hết hạn / Không hợp lệ từ Server
        if (e.response?.statusCode == 401) {
          CredentialService().clearAccessToken();
          // Sau lệnh này userLoggedInfo$ sẽ phát ra null
          // Bạn có thể setup Stream ở main.dart để đẩy user ra màn LoginScreen
        }
        return handler.next(e);
      },
    ));

    return PublicOpenapi(
      dio: dio,
      basePathOverride: Environment.apiUrl,
    );
  }
}

