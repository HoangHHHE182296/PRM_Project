// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginResponseApiSuccessResponse
    extends LoginResponseApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final LoginResponse? data;

  factory _$LoginResponseApiSuccessResponse(
          [void Function(LoginResponseApiSuccessResponseBuilder)? updates]) =>
      (LoginResponseApiSuccessResponseBuilder()..update(updates))._build();

  _$LoginResponseApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  LoginResponseApiSuccessResponse rebuild(
          void Function(LoginResponseApiSuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseApiSuccessResponseBuilder toBuilder() =>
      LoginResponseApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponseApiSuccessResponse &&
        success == other.success &&
        message == other.message &&
        statusCode == other.statusCode &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginResponseApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class LoginResponseApiSuccessResponseBuilder
    implements
        Builder<LoginResponseApiSuccessResponse,
            LoginResponseApiSuccessResponseBuilder> {
  _$LoginResponseApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  LoginResponseBuilder? _data;
  LoginResponseBuilder get data => _$this._data ??= LoginResponseBuilder();
  set data(LoginResponseBuilder? data) => _$this._data = data;

  LoginResponseApiSuccessResponseBuilder() {
    LoginResponseApiSuccessResponse._defaults(this);
  }

  LoginResponseApiSuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponseApiSuccessResponse other) {
    _$v = other as _$LoginResponseApiSuccessResponse;
  }

  @override
  void update(void Function(LoginResponseApiSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginResponseApiSuccessResponse build() => _build();

  _$LoginResponseApiSuccessResponse _build() {
    _$LoginResponseApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$LoginResponseApiSuccessResponse._(
            success: success,
            message: message,
            statusCode: statusCode,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LoginResponseApiSuccessResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
