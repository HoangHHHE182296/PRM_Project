import 'package:dio/dio.dart';
import '../di/injection.dart';
import '../service/credential_service.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final credentialService = sl<CredentialService>();

    if (credentialService.isAuthenticated) {
      final token = credentialService.credential?['accessToken'];
      options.headers['Authorization'] = 'Bearer $token';
    }

    // Tiếp tục gửi request
    return handler.next(options);
  }
}
