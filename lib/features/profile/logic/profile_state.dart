part of 'profile_cubit.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final dynamic profileData;
  ProfileLoaded(this.profileData);
}

class ProfileUpdateLoading extends ProfileState {
  final dynamic profileData;
  ProfileUpdateLoading(this.profileData);
}

class ProfileUpdateSuccess extends ProfileState {
  final dynamic profileData;
  ProfileUpdateSuccess(this.profileData);
}

class ProfileError extends ProfileState {
  final String message;
  final dynamic profileData; // Giữ lại profileData cũ nếu có để ko bị mất UI
  ProfileError(this.message, {this.profileData});
}
