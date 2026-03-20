import 'regex.constant.dart';

class ValidatorConstant {
  static bool isValidEmail(String email) {
    return RegexConstant.email.hasMatch(email);
  }
 // Validate Số điện thoại
  static bool isValidPhone(String phone) {
    return RegexConstant.phone.hasMatch(phone);
  }

  // Validate Mật khẩu
  static bool isValidPassword(String password) {
    return RegexConstant.password.hasMatch(password);
  }
}
