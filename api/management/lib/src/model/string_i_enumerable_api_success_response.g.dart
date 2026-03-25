// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_i_enumerable_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StringIEnumerableApiSuccessResponse
    extends StringIEnumerableApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final BuiltList<String>? data;
  @override
  final JsonObject? metadata;

  factory _$StringIEnumerableApiSuccessResponse(
          [void Function(StringIEnumerableApiSuccessResponseBuilder)?
              updates]) =>
      (StringIEnumerableApiSuccessResponseBuilder()..update(updates))._build();

  _$StringIEnumerableApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data, this.metadata})
      : super._();
  @override
  StringIEnumerableApiSuccessResponse rebuild(
          void Function(StringIEnumerableApiSuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StringIEnumerableApiSuccessResponseBuilder toBuilder() =>
      StringIEnumerableApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringIEnumerableApiSuccessResponse &&
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
    return (newBuiltValueToStringHelper(r'StringIEnumerableApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class StringIEnumerableApiSuccessResponseBuilder
    implements
        Builder<StringIEnumerableApiSuccessResponse,
            StringIEnumerableApiSuccessResponseBuilder> {
  _$StringIEnumerableApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  ListBuilder<String>? _data;
  ListBuilder<String> get data => _$this._data ??= ListBuilder<String>();
  set data(ListBuilder<String>? data) => _$this._data = data;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  StringIEnumerableApiSuccessResponseBuilder() {
    StringIEnumerableApiSuccessResponse._defaults(this);
  }

  StringIEnumerableApiSuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _data = $v.data?.toBuilder();
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringIEnumerableApiSuccessResponse other) {
    _$v = other as _$StringIEnumerableApiSuccessResponse;
  }

  @override
  void update(
      void Function(StringIEnumerableApiSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StringIEnumerableApiSuccessResponse build() => _build();

  _$StringIEnumerableApiSuccessResponse _build() {
    _$StringIEnumerableApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$StringIEnumerableApiSuccessResponse._(
            success: success,
            message: message,
            statusCode: statusCode,
            data: _data?.build(),
            metadata: metadata,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'StringIEnumerableApiSuccessResponse',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
