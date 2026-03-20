class RegexConstant {
  static final RegExp email = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  // Số điện thoại: Bắt đầu bằng số 0 và đủ 10 chữ số
  static final RegExp phone = RegExp(r'^0\d{9}$');

  // Mật khẩu: Ít nhất 6 ký tự, 1 chữ hoa, 1 chữ thường, 1 ký tự đặc biệt
  // Sử dụng Lookahead (?!...) để kiểm tra các điều kiện
// Mật khẩu: ít nhất 6 ký tự, 1 hoa, 1 thường, 1 số, 1 ký tự đặc biệt bất kỳ
static final RegExp password = RegExp(
  r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^A-Za-z0-9]).{6,}$',
);
}
