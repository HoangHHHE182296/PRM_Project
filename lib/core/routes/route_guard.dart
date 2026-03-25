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
      final userRoles = credentialService.userLoggedInfo?.roles ?? [];
      // Case-insensitive substring match: 'admin' khớp với 'Super Admin', 'Administrator', ...
      final hasRequired = route.roles!.any(
        (required) => userRoles.any((userRole) => userRole.toLowerCase().contains(required.toLowerCase())),
      );
      if (!hasRequired) {
        return '/403';
      }
    }

    return null;
  }
}
