import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:public_openapi/public_openapi.dart';
import '../../../core/service/auth_service.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthService _authService;

  RegisterCubit(this._authService) : super(RegisterInitial());

  Future<void> register(RegisterCommand command) async {
    emit(RegisterLoading());
    try {
      final user = await _authService.register(command);
      if (user != null) {
        emit(RegisterSuccess(user));
      } else {
        emit(RegisterError("Đăng ký thất bại"));
      }
    } catch (e) {
      final errorMessage = e.toString();
      if (errorMessage.contains("DUPLICATE_EMAIL")) {
        emit(RegisterError("Email này đã được sử dụng, vui lòng thử email khác!", isDuplicateEmail: true));
      } else {
        emit(RegisterError(errorMessage.replaceAll("Exception: ", "")));
      }
    }
  }

  Future<bool> generateOtp(String email) async {
    return await _authService.generateOtp(email);
  }

  Future<bool> verifyAccount(String email, String otp) async {
    return await _authService.verifyAccount(email, otp);
  }
}
