import 'regex.constant.dart';

class ValidatorConstant {
  static bool isValidEmail(String email) {
    return RegexConstant.email.hasMatch(email);
  }
}
