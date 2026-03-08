// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StringApiSuccessResponse extends StringApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final String? data;

  factory _$StringApiSuccessResponse(
          [void Function(StringApiSuccessResponseBuilder)? updates]) =>
      (StringApiSuccessResponseBuilder()..update(updates))._build();

  _$StringApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  StringApiSuccessResponse rebuild(
          void Function(StringApiSuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StringApiSuccessResponseBuilder toBuilder() =>
      StringApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringApiSuccessResponse &&
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
    return (newBuiltValueToStringHelper(r'StringApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class StringApiSuccessResponseBuilder
    implements
        Builder<StringApiSuccessResponse, StringApiSuccessResponseBuilder> {
  _$StringApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  StringApiSuccessResponseBuilder() {
    StringApiSuccessResponse._defaults(this);
  }

  StringApiSuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringApiSuccessResponse other) {
    _$v = other as _$StringApiSuccessResponse;
  }

  @override
  void update(void Function(StringApiSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StringApiSuccessResponse build() => _build();

  _$StringApiSuccessResponse _build() {
    final _$result = _$v ??
        _$StringApiSuccessResponse._(
          success: success,
          message: message,
          statusCode: statusCode,
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
