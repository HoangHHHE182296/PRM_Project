// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_collection_response_i_enumerable_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThemeCollectionResponseIEnumerableApiSuccessResponse
    extends ThemeCollectionResponseIEnumerableApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final BuiltList<ThemeCollectionResponse>? data;

  factory _$ThemeCollectionResponseIEnumerableApiSuccessResponse(
          [void Function(
                  ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder)?
              updates]) =>
      (ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder()
            ..update(updates))
          ._build();

  _$ThemeCollectionResponseIEnumerableApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  ThemeCollectionResponseIEnumerableApiSuccessResponse rebuild(
          void Function(
                  ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder toBuilder() =>
      ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThemeCollectionResponseIEnumerableApiSuccessResponse &&
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
    return (newBuiltValueToStringHelper(
            r'ThemeCollectionResponseIEnumerableApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder
    implements
        Builder<ThemeCollectionResponseIEnumerableApiSuccessResponse,
            ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder> {
  _$ThemeCollectionResponseIEnumerableApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  ListBuilder<ThemeCollectionResponse>? _data;
  ListBuilder<ThemeCollectionResponse> get data =>
      _$this._data ??= ListBuilder<ThemeCollectionResponse>();
  set data(ListBuilder<ThemeCollectionResponse>? data) => _$this._data = data;

  ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder() {
    ThemeCollectionResponseIEnumerableApiSuccessResponse._defaults(this);
  }

  ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder get _$this {
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
  void replace(ThemeCollectionResponseIEnumerableApiSuccessResponse other) {
    _$v = other as _$ThemeCollectionResponseIEnumerableApiSuccessResponse;
  }

  @override
  void update(
      void Function(
              ThemeCollectionResponseIEnumerableApiSuccessResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ThemeCollectionResponseIEnumerableApiSuccessResponse build() => _build();

  _$ThemeCollectionResponseIEnumerableApiSuccessResponse _build() {
    _$ThemeCollectionResponseIEnumerableApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$ThemeCollectionResponseIEnumerableApiSuccessResponse._(
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
            r'ThemeCollectionResponseIEnumerableApiSuccessResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
