import 'package:get_it/get_it.dart';
import 'package:prm_project/core/service/auth_service.dart';
import 'package:prm_project/features/auth/logic/register_cubit.dart';
import 'logic/login_cubit.dart';

export 'logic/register_cubit.dart';
export 'ui/login/login_screen.dart';
export 'ui/register/register_screen.dart';

void registerAuthFeature(GetIt sl) {
  sl.registerFactory(() => LoginCubit(sl<AuthService>()));
  sl.registerFactory(() => RegisterCubit(sl<AuthService>()));
}
