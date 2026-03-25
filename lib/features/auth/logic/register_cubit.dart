import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/service/auth_service.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthService _authService;

  RegisterCubit(this._authService) : super(RegisterInitial());

  Future<void> register(String email) async {
    emit(RegisterLoading());
    try {
      await _authService.register(email);
      emit(RegisterSuccess(email));
    } catch (e) {
      emit(RegisterError(e.toString().replaceAll('Exception: ', '')));
    }
  }

  Future<bool> generateOtp(String email) async {
    return await _authService.generateOtp(email);
  }

  Future<bool> verifyAccount(String email, String otp) async {
    return await _authService.verifyAccount(email, otp);
  }
}
