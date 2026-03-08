import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    //Future<LoginResponseApiSuccessResponse> apiAuthGoogleLoginPost({ GoogleLoginCommand googleLoginCommand }) async
    test('test apiAuthGoogleLoginPost', () async {
      // TODO
    });

    //Future<LoginResponseApiSuccessResponse> apiAuthLoginPost({ LoginCommand loginCommand }) async
    test('test apiAuthLoginPost', () async {
      // TODO
    });

    //Future<LoginResponseApiSuccessResponse> apiAuthRefreshTokenPost({ RefreshTokenCommand refreshTokenCommand }) async
    test('test apiAuthRefreshTokenPost', () async {
      // TODO
    });

    //Future<UserResponseApiSuccessResponse> apiAuthRegisterPost({ RegisterCommand registerCommand }) async
    test('test apiAuthRegisterPost', () async {
      // TODO
    });

  });
}
