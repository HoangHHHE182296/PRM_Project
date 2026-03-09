// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_paginated_list_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductResponsePaginatedListApiSuccessResponse
    extends ProductResponsePaginatedListApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final ProductResponsePaginatedList? data;

  factory _$ProductResponsePaginatedListApiSuccessResponse(
          [void Function(ProductResponsePaginatedListApiSuccessResponseBuilder)?
              updates]) =>
      (ProductResponsePaginatedListApiSuccessResponseBuilder()..update(updates))
          ._build();

  _$ProductResponsePaginatedListApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  ProductResponsePaginatedListApiSuccessResponse rebuild(
          void Function(ProductResponsePaginatedListApiSuccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductResponsePaginatedListApiSuccessResponseBuilder toBuilder() =>
      ProductResponsePaginatedListApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductResponsePaginatedListApiSuccessResponse &&
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
            r'ProductResponsePaginatedListApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class ProductResponsePaginatedListApiSuccessResponseBuilder
    implements
        Builder<ProductResponsePaginatedListApiSuccessResponse,
            ProductResponsePaginatedListApiSuccessResponseBuilder> {
  _$ProductResponsePaginatedListApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  ProductResponsePaginatedListBuilder? _data;
  ProductResponsePaginatedListBuilder get data =>
      _$this._data ??= ProductResponsePaginatedListBuilder();
  set data(ProductResponsePaginatedListBuilder? data) => _$this._data = data;

  ProductResponsePaginatedListApiSuccessResponseBuilder() {
    ProductResponsePaginatedListApiSuccessResponse._defaults(this);
  }

  ProductResponsePaginatedListApiSuccessResponseBuilder get _$this {
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
  void replace(ProductResponsePaginatedListApiSuccessResponse other) {
    _$v = other as _$ProductResponsePaginatedListApiSuccessResponse;
  }

  @override
  void update(
      void Function(ProductResponsePaginatedListApiSuccessResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductResponsePaginatedListApiSuccessResponse build() => _build();

  _$ProductResponsePaginatedListApiSuccessResponse _build() {
    _$ProductResponsePaginatedListApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$ProductResponsePaginatedListApiSuccessResponse._(
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
            r'ProductResponsePaginatedListApiSuccessResponse',
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
