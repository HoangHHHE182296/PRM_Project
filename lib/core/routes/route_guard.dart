// lib/core/routes/route_guard.dart

import 'package:prm_project/core/constants/router_constant.dart';
import 'package:prm_project/core/models/router.dart';
import '../di/injection.dart';
import '../service/credential_service.dart';

class RouteGuard {
  RouteGuard._();
  static String? check(RouterItem route) {
    final credentialService = sl<CredentialService>();

    if (route.protected && !credentialService.isAuthenticated) {
      return RouterConst.login.router;
    }

    if (route.roles != null && route.roles!.isNotEmpty) {
      if (!credentialService.hasAnyRole(route.roles!)) {
        return '/403';
      }
    }

    return null;
  }
}
