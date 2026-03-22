import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/service/auth_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthService _authService;

  LoginCubit(this._authService) : super(LoginInitial());

  Future<void> login(String email, String password, bool isRemember) async {
    emit(LoginLoading());
    try {
      final response = await _authService.login(
        email,
        password,
        isRemember: isRemember,
      );
      if (response is String) {
        emit(LoginError(response));
      } else {
        emit(LoginSuccess(response));
      }
    } catch (e) {
      emit(LoginError('Lỗi kết nối, vui lòng thử lại!'));
    }
  }
}
