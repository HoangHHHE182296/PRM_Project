import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:public_openapi/public_openapi.dart';
import 'credential.service.dart';
import 'package:public_openapi/src/model/verify_account_command.dart';

class AuthService {
  final AuthApi _authApi;
  final CredentialService _credentialService = CredentialService();
  final AccountApi _accountApi;
  AuthService(this._authApi, this._accountApi);

  Future<dynamic> login(
    String email,
    String password, {
    bool isRemember = false,
  }) async {
    try {
      final command = LoginCommand(
        (b) => b
          ..email = email
          ..password = password,
      );

      final response = await _authApi.apiAuthLoginPost(loginCommand: command);

      if (response.statusCode == 200 && response.data != null) {
        final loginResponseWrapper = response.data;
        if (loginResponseWrapper?.success == true &&
            loginResponseWrapper?.data != null) {
          _credentialService.setCredential(
            loginResponseWrapper!.data,
            isRemember: isRemember,
          );
          return loginResponseWrapper.data;
        }
      }

      throw Exception();
    } on DioException catch (e) {
      final response = e.response?.data;

      try {
        final res = standardSerializers.deserializeWith(
          ApiFailureResponse.serializer,
          response,
        );

        if (res?.error?.code == 'UNAUTHORIZED') {
          return "Thông tin đăng nhập chưa chính xác!";
        }
      } catch (_) {}
      rethrow;
    }
  }

  Future<UserResponse?> register(RegisterCommand command) async {
    try {
      final response = await _authApi.apiAuthRegisterPost(
        registerCommand: command,
      );
      if (response.data?.success == true) {
        return response.data?.data;
      }
      return null;
    } on DioException catch (e) {
      final errorData = e.response?.data;

      if (errorData != null && errorData['error']?['code'] == "DUPLICATE") {
        throw Exception("DUPLICATE_EMAIL");
      }

      throw Exception(errorData?['message'] ?? "Đăng ký thất bại");
    }
  }

Future<bool> generateOtp(String email) async {
  try {
    final command = GenerateOtpCommand((b) => b..email = email);

    final response = await _accountApi.apiAccountGenerateOtpPost(
      generateOtpCommand: command,
    );

    return response.data?.success ?? false;
  } on DioException catch (e) {
    print("DIO ERROR TYPE: ${e.type}");

    if (e.type == DioExceptionType.cancel) {
      print("👉 Request bị CANCEL");
    }

    return false;
  }
}
  // prm_project/core/auth/auth.service.dart

  Future<bool> verifyAccount(String email, String otp) async {
    try {
      // Sử dụng VerifyAccountCommand theo đúng file AccountApi cung cấp
      final command = VerifyAccountCommand(
        (b) => b
          ..email = email
          ..otpCode = otp,
      );

      // Gọi đúng hàm apiAccountVerifyAccountPost
      final response = await _accountApi.apiAccountVerifyAccountPost(
        
        verifyAccountCommand: command,
      );

      // Kiểm tra kết quả trả về từ BooleanApiSuccessResponse
      return response.data?.success ?? false;
    } catch (e) {
      // Bạn có thể log lỗi ở đây để debug nếu cần
      print("Verify Error: $e");
      return false;
    }
  }

  void logout() {
    _credentialService.clearAccessToken();
  }
}
