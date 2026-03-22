part of 'register_cubit.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final dynamic response;
  RegisterSuccess(this.response);
}

class RegisterError extends RegisterState {
  final String message;
  final bool isDuplicateEmail;
  RegisterError(this.message, {this.isDuplicateEmail = false});
}
