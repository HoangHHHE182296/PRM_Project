import 'package:get_it/get_it.dart';
import 'package:prm_project/core/api/api_client.dart';
import 'package:prm_project/core/service/auth_service.dart';
import 'package:prm_project/core/service/credential_service.dart';
import 'package:prm_project/features/auth/auth_feature.dart';
import 'package:public_openapi/public_openapi.dart';

final sl = GetIt.instance;

Future<void> setupDI() async {
  final credentialService = CredentialService();
  await credentialService.init();
  sl.registerSingleton<CredentialService>(credentialService);
  sl.registerLazySingleton<PublicOpenapi>(() => ApiClient.openApi);

  sl.registerLazySingleton<AuthService>(
    () => AuthService(
      sl<PublicOpenapi>().getAuthApi(),
      sl<CredentialService>(),
      sl<PublicOpenapi>().getAccountApi(),
    ),
  );

  registerAuthFeature(sl);
}
