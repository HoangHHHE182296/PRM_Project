import 'package:dio/dio.dart';
import '../di/injection.dart';
import '../service/auth_service.dart';

class ErrorInterceptor extends Interceptor {
  final Dio dio; // Truyền dio vào để gọi lại request cũ
  bool _isRefreshing = false;

  ErrorInterceptor(this.dio);

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final response = err.response;
    final statusCode = response?.statusCode;

    // 1. Xử lý lỗi 401 (Unauthorized) -> Refresh Token
    if (statusCode == 401) {
      if (!_isRefreshing) {
        _isRefreshing = true;
        try {
          final authService = sl<AuthService>();
          // Gọi hàm refresh token của bạn
          final success = await authService.refreshToken();

          if (success) {
            _isRefreshing = false;
            final opts = Options(
              method: err.requestOptions.method,
              headers: err.requestOptions.headers,
            );
            final cloneReq = await dio.request(
              err.requestOptions.path,
              options: opts,
              data: err.requestOptions.data,
              queryParameters: err.requestOptions.queryParameters,
            );
            return handler.resolve(cloneReq);
          }
        } catch (e) {
          _isRefreshing = false;
          sl<AuthService>().logout();
        }
      }
    }

    if (statusCode == 403) {
      // Navigator.pushNamed(context, '/403');
    } else if (statusCode == 404) {
      // Navigator.pushNamed(context, '/404');
    }

    return handler.next(err); // Trả lỗi về cho phía gọi API (Cubit)
  }
}
