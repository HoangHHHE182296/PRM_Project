import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prm_project/core/service/auth_service.dart';
import 'package:public_openapi/src/model/update_profile_command.dart';
import 'package:public_openapi/src/model/profile_response_api_success_response.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AuthService _authService;
  ProfileResponseApiSuccessResponse? _currentData;

  ProfileCubit(this._authService) : super(ProfileInitial());

  Future<void> loadProfile() async {
    emit(ProfileLoading());
    try {
      final response = await _authService.getProfile();
      if (response != null && response.success == true) {
        _currentData = response;
        emit(ProfileLoaded(_currentData));
      } else {
        emit(ProfileError('Không tải được hồ sơ', profileData: _currentData));
      }
    } catch (e) {
      emit(ProfileError('Lỗi kết nối, vui lòng thử lại!', profileData: _currentData));
    }
  }

  Future<void> updateProfile(UpdateProfileCommand command) async {
    emit(ProfileUpdateLoading(_currentData));
    try {
      final success = await _authService.updateProfile(command);
      if (success) {
        // Sau khi update thành công, tự động load lại
        await loadProfile();
        if (state is ProfileLoaded) {
           emit(ProfileUpdateSuccess(_currentData));
           emit(ProfileLoaded(_currentData)); // Đặt lại view state
        }
      } else {
        emit(ProfileError('Cập nhật thất bại', profileData: _currentData));
      }
    } catch (e) {
      emit(ProfileError('Lỗi trong quá trình cập nhật', profileData: _currentData));
    }
  }

  Future<bool> sendOtp(String email) async {
    return await _authService.generateOtp(email);
  }

  Future<bool> verifyAccount(String email, String otp) async {
    final success = await _authService.verifyAccount(email, otp);
    if (success) {
      await loadProfile();
    }
    return success;
  }

  Future<bool> setPassword(String newPassword) async {
    final success = await _authService.setPassword(newPassword);
    if (success) {
      await loadProfile();
    }
    return success;
  }

  Future<bool> changePassword(String currentPassword, String newPassword) async {
    final success = await _authService.changePassword(currentPassword, newPassword);
    if (success) {
      await loadProfile();
    }
    return success;
  }
}

