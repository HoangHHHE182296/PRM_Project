import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AccountApi
void main() {
  final instance = Openapi().getAccountApi();

  group(AccountApi, () {
    //Future<BooleanApiSuccessResponse> apiAccountGenerateOtpPost({ GenerateOtpCommand generateOtpCommand }) async
    test('test apiAccountGenerateOtpPost', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiAccountPasswordChangePut({ ChangePasswordCommand changePasswordCommand }) async
    test('test apiAccountPasswordChangePut', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiAccountPasswordSetPost({ SetPasswordCommand setPasswordCommand }) async
    test('test apiAccountPasswordSetPost', () async {
      // TODO
    });

    //Future<StringApiSuccessResponse> apiAccountProfileAvatarPost({ MultipartFile file }) async
    test('test apiAccountProfileAvatarPost', () async {
      // TODO
    });

    //Future<ProfileResponseApiSuccessResponse> apiAccountProfileGet() async
    test('test apiAccountProfileGet', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiAccountProfilePut({ UpdateProfileCommand updateProfileCommand }) async
    test('test apiAccountProfilePut', () async {
      // TODO
    });

    //Future<BooleanApiSuccessResponse> apiAccountVerifyAccountPost({ VerifyAccountCommand verifyAccountCommand }) async
    test('test apiAccountVerifyAccountPost', () async {
      // TODO
    });

  });
}
