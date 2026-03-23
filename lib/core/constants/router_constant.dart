import 'package:prm_project/core/models/router.dart';

class RouterConst {
  RouterConst._();

  static const login = RouterItem(
    title: 'Đăng nhập',
    path: 'login',
    router: '/auth/login',
    protected: false,
  );

  static const register = RouterItem(
    title: 'Đăng ký',
    path: 'register',
    router: '/auth/register',
    protected: false,
  );

  static const home = RouterItem(
    title: 'Trang chủ',
    path: '',
    router: '/',
    protected: true,
  );

  static const gifts = RouterItem(
    title: 'Quà tặng',
    path: 'gifts',
    router: '/gifts',
    protected: true,
  );

  static const profile = RouterItem(
    title: 'Hồ sơ',
    path: 'profile',
    router: '/profile',
    protected: true,
  );
}
