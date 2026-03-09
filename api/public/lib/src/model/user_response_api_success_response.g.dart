// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResponseApiSuccessResponse extends UserResponseApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final UserResponse? data;

  factory _$UserResponseApiSuccessResponse(
          [void Function(UserResponseApiSuccessResponseBuilder)? updates]) =>
      (UserResponseApiSuccessResponseBuilder()..update(updates))._build();

  _$UserResponseApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  UserResponseApiSuccessResponse rebuild(
          void Function(UserResponseApiSuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseApiSuccessResponseBuilder toBuilder() =>
      UserResponseApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponseApiSuccessResponse &&
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
    return (newBuiltValueToStringHelper(r'UserResponseApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class UserResponseApiSuccessResponseBuilder
    implements
        Builder<UserResponseApiSuccessResponse,
            UserResponseApiSuccessResponseBuilder> {
  _$UserResponseApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  UserResponseBuilder? _data;
  UserResponseBuilder get data => _$this._data ??= UserResponseBuilder();
  set data(UserResponseBuilder? data) => _$this._data = data;

  UserResponseApiSuccessResponseBuilder() {
    UserResponseApiSuccessResponse._defaults(this);
  }

  UserResponseApiSuccessResponseBuilder get _$this {
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
  void replace(UserResponseApiSuccessResponse other) {
    _$v = other as _$UserResponseApiSuccessResponse;
  }

  @override
  void update(void Function(UserResponseApiSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponseApiSuccessResponse build() => _build();

  _$UserResponseApiSuccessResponse _build() {
    _$UserResponseApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$UserResponseApiSuccessResponse._(
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
            r'UserResponseApiSuccessResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
