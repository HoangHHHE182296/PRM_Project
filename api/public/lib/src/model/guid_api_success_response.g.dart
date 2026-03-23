// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guid_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GuidApiSuccessResponse extends GuidApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final String? data;
  @override
  final JsonObject? metadata;

  factory _$GuidApiSuccessResponse(
          [void Function(GuidApiSuccessResponseBuilder)? updates]) =>
      (GuidApiSuccessResponseBuilder()..update(updates))._build();

  _$GuidApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data, this.metadata})
      : super._();
  @override
  GuidApiSuccessResponse rebuild(
          void Function(GuidApiSuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuidApiSuccessResponseBuilder toBuilder() =>
      GuidApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuidApiSuccessResponse &&
        success == other.success &&
        message == other.message &&
        statusCode == other.statusCode &&
        data == other.data &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuidApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class GuidApiSuccessResponseBuilder
    implements Builder<GuidApiSuccessResponse, GuidApiSuccessResponseBuilder> {
  _$GuidApiSuccessResponse? _$v;

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

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  GuidApiSuccessResponseBuilder() {
    GuidApiSuccessResponse._defaults(this);
  }

  GuidApiSuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _data = $v.data;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuidApiSuccessResponse other) {
    _$v = other as _$GuidApiSuccessResponse;
  }

  @override
  void update(void Function(GuidApiSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuidApiSuccessResponse build() => _build();

  _$GuidApiSuccessResponse _build() {
    final _$result = _$v ??
        _$GuidApiSuccessResponse._(
          success: success,
          message: message,
          statusCode: statusCode,
          data: data,
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
