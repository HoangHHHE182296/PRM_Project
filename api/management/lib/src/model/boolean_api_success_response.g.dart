// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BooleanApiSuccessResponse extends BooleanApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final bool? data;

  factory _$BooleanApiSuccessResponse(
          [void Function(BooleanApiSuccessResponseBuilder)? updates]) =>
      (BooleanApiSuccessResponseBuilder()..update(updates))._build();

  _$BooleanApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  BooleanApiSuccessResponse rebuild(
          void Function(BooleanApiSuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooleanApiSuccessResponseBuilder toBuilder() =>
      BooleanApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooleanApiSuccessResponse &&
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
    return (newBuiltValueToStringHelper(r'BooleanApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class BooleanApiSuccessResponseBuilder
    implements
        Builder<BooleanApiSuccessResponse, BooleanApiSuccessResponseBuilder> {
  _$BooleanApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  bool? _data;
  bool? get data => _$this._data;
  set data(bool? data) => _$this._data = data;

  BooleanApiSuccessResponseBuilder() {
    BooleanApiSuccessResponse._defaults(this);
  }

  BooleanApiSuccessResponseBuilder get _$this {
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
  void replace(BooleanApiSuccessResponse other) {
    _$v = other as _$BooleanApiSuccessResponse;
  }

  @override
  void update(void Function(BooleanApiSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BooleanApiSuccessResponse build() => _build();

  _$BooleanApiSuccessResponse _build() {
    final _$result = _$v ??
        _$BooleanApiSuccessResponse._(
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
