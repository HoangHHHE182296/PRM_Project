import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prm_project/core/constants/router_constant.dart';
import 'package:prm_project/core/routes/route_guard.dart';
import 'package:prm_project/features/auth/ui/login/login_screen.dart';
import 'package:prm_project/features/auth/ui/register/register_screen.dart';
import 'package:prm_project/features/home/home_feature.dart';
import 'package:prm_project/page/products/product_list_screen.dart';
import '../../shared/layouts/customer_layout.dart';

class AppRouter {
  static CustomTransitionPage _buildPageWithTransition({required BuildContext context, required GoRouterState state, required Widget child}) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: animation.drive(Tween(begin: const Offset(1.0, 0.0), end: Offset.zero).chain(CurveTween(curve: Curves.easeInOut))),
          child: child,
        );
      },
    );
  }

  static final router = GoRouter(
    initialLocation: RouterConst.home.router,
    routes: [
      // 1. NHÓM CÁC TRANG DÙNG CHUNG LAYOUT (NESTED)
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return CustomerLayout(navigationShell: navigationShell);
        },
        branches: [
          // Nhánh 1: Home
          StatefulShellBranch(
            routes: [
              GoRoute(
                redirect: (context, state) => RouteGuard.check(RouterConst.home),
                path: RouterConst.home.router,
                pageBuilder: (context, state) => _buildPageWithTransition(context: context, state: state, child: const HomeScreen()),
              ),
            ],
          ),
          // Nánh 2: Quà tặng (Products)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/gifts',
                pageBuilder: (context, state) => _buildPageWithTransition(context: context, state: state, child: const ProductListScreen()),
              ),
            ],
          ),
          // Nhánh 4: Profile
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                pageBuilder: (context, state) => _buildPageWithTransition(
                  context: context,
                  state: state,
                  child: const Scaffold(body: Center(child: Text("Hồ Sơ Tôi"))),
                ),
              ),
            ],
          ),
        ],
      ),

      // 2. CÁC TRANG KHÔNG DÙNG LAYOUT (FULL SCREEN)
      GoRoute(path: RouterConst.login.router, builder: (context, state) => const LoginScreen()),

      GoRoute(path: RouterConst.register.router, builder: (context, state) => const RegisterScreen()),

      GoRoute(
        path: '/403',
        builder: (context, state) => const Scaffold(body: Center(child: Text("Bạn không có quyền truy cập trang này!"))),
      ),

      GoRoute(
        path: '/404',
        builder: (context, state) => const Scaffold(body: Center(child: Text("Trang không tồn tại!"))),
      ),
    ],
  );
}
