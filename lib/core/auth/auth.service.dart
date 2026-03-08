import 'package:openapi/openapi.dart';
import 'package:dio/dio.dart';
import 'credential.service.dart';

class AuthService {
  final AuthApi _authApi;
  final CredentialService _credentialService = CredentialService();

  AuthService(this._authApi);

  Future<LoginResponse?> login(String email, String password, {bool isRemember = false}) async {
    try {
      final command = LoginCommand((b) => b
        ..email = email
        ..password = password);
      
      final response = await _authApi.apiAuthLoginPost(loginCommand: command);
      
      if (response.statusCode == 200 && response.data != null) {
        final loginResponseWrapper = response.data;
        if (loginResponseWrapper?.success == true && loginResponseWrapper?.data != null) {
            _credentialService.setCredential(loginResponseWrapper!.data, isRemember: isRemember);
            return loginResponseWrapper.data;
        }
      }
      return null;
    } on DioException catch (_) {
      // Handle Dio exception properly based on your app's error handling
      rethrow;
    }
  }

  Future<UserResponse?> register(RegisterCommand command) async {
    try {
      final response = await _authApi.apiAuthRegisterPost(registerCommand: command);
      if (response.data?.success == true) {
        return response.data?.data;
      }
      return null;
    } on DioException catch (_) {
      rethrow;
    }
  }

  void logout() {
    _credentialService.clearAccessToken();
  }
}
