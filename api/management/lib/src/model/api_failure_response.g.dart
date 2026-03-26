// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_failure_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiFailureResponse extends ApiFailureResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final ApiErrorDetail? error;

  factory _$ApiFailureResponse(
          [void Function(ApiFailureResponseBuilder)? updates]) =>
      (ApiFailureResponseBuilder()..update(updates))._build();

  _$ApiFailureResponse._(
      {this.success, this.message, this.statusCode, this.error})
      : super._();
  @override
  ApiFailureResponse rebuild(
          void Function(ApiFailureResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiFailureResponseBuilder toBuilder() =>
      ApiFailureResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiFailureResponse &&
        success == other.success &&
        message == other.message &&
        statusCode == other.statusCode &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiFailureResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('error', error))
        .toString();
  }
}

class ApiFailureResponseBuilder
    implements Builder<ApiFailureResponse, ApiFailureResponseBuilder> {
  _$ApiFailureResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  ApiErrorDetailBuilder? _error;
  ApiErrorDetailBuilder get error => _$this._error ??= ApiErrorDetailBuilder();
  set error(ApiErrorDetailBuilder? error) => _$this._error = error;

  ApiFailureResponseBuilder() {
    ApiFailureResponse._defaults(this);
  }

  ApiFailureResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiFailureResponse other) {
    _$v = other as _$ApiFailureResponse;
  }

  @override
  void update(void Function(ApiFailureResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiFailureResponse build() => _build();

  _$ApiFailureResponse _build() {
    _$ApiFailureResponse _$result;
    try {
      _$result = _$v ??
          _$ApiFailureResponse._(
            success: success,
            message: message,
            statusCode: statusCode,
            error: _error?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiFailureResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
