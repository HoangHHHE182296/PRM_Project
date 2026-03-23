import 'package:dio/dio.dart';
import 'package:public_openapi/public_openapi.dart';
import 'credential_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final AuthApi _authApi;
  final CredentialService _credentialService;
  final AccountApi _accountApi;
  AuthService(this._authApi, this._credentialService, this._accountApi);

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
    } on DioException catch (_) {
      return false;
    }
  }
  // prm_project/core/auth/auth.service.dart

  Future<ProfileResponseApiSuccessResponse?> getProfile() async {
    try {
      final response = await _accountApi.apiAccountProfileGet();
      if (response.statusCode == 200) {
        return response.data;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<bool> updateProfile(UpdateProfileCommand command) async {
    try {
      final response = await _accountApi.apiAccountProfilePut(
        updateProfileCommand: command,
      );
      return response.data?.success ?? false;
    } catch (e) {
      return false;
    }
  }

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
      return false;
    }
  }

  Future<bool> setPassword(String newPassword) async {
    try {
      final command = SetPasswordCommand((b) => b..newPassword = newPassword);
      final response = await _accountApi.apiAccountPasswordSetPost(
        setPasswordCommand: command,
      );
      return response.data?.success ?? false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> changePassword(
    String currentPassword,
    String newPassword,
  ) async {
    try {
      final command = ChangePasswordCommand(
        (b) => b
          ..currentPassword = currentPassword
          ..newPassword = newPassword,
      );
      final response = await _accountApi.apiAccountPasswordChangePut(
        changePasswordCommand: command,
      );
      return response.data?.success ?? false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> refreshToken() async {
    try {
      final credentials = _credentialService.credential;
      if (credentials != null && credentials['refreshToken'] != null) {
        final command = RefreshTokenCommand(
          (b) => b..refreshToken = credentials['refreshToken'],
        );

        final response = await _authApi.apiAuthRefreshTokenPost(
          refreshTokenCommand: command,
        );

        if (response.statusCode == 200 && response.data != null) {
          final responseData = response.data;
          if (responseData?.success == true && responseData?.data != null) {
            final prefs = await SharedPreferences.getInstance();
            final isRemember = prefs.getString('USER_INFO') != null;

            _credentialService.setCredential(
              responseData!.data,
              isRemember: isRemember,
            );
            return true;
          }
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  void logout() {
    _credentialService.clearAccessToken();
  }
}
