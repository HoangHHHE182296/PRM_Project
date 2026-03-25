// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductDetailResponseApiSuccessResponse
    extends ProductDetailResponseApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final ProductDetailResponse? data;

  factory _$ProductDetailResponseApiSuccessResponse(
          [void Function(ProductDetailResponseApiSuccessResponseBuilder)?
              updates]) =>
      (ProductDetailResponseApiSuccessResponseBuilder()..update(updates))
          ._build();

  _$ProductDetailResponseApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  ProductDetailResponseApiSuccessResponse rebuild(
          void Function(ProductDetailResponseApiSuccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailResponseApiSuccessResponseBuilder toBuilder() =>
      ProductDetailResponseApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailResponseApiSuccessResponse &&
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
            r'ProductDetailResponseApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class ProductDetailResponseApiSuccessResponseBuilder
    implements
        Builder<ProductDetailResponseApiSuccessResponse,
            ProductDetailResponseApiSuccessResponseBuilder> {
  _$ProductDetailResponseApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  ProductDetailResponseBuilder? _data;
  ProductDetailResponseBuilder get data =>
      _$this._data ??= ProductDetailResponseBuilder();
  set data(ProductDetailResponseBuilder? data) => _$this._data = data;

  ProductDetailResponseApiSuccessResponseBuilder() {
    ProductDetailResponseApiSuccessResponse._defaults(this);
  }

  ProductDetailResponseApiSuccessResponseBuilder get _$this {
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
  void replace(ProductDetailResponseApiSuccessResponse other) {
    _$v = other as _$ProductDetailResponseApiSuccessResponse;
  }

  @override
  void update(
      void Function(ProductDetailResponseApiSuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductDetailResponseApiSuccessResponse build() => _build();

  _$ProductDetailResponseApiSuccessResponse _build() {
    _$ProductDetailResponseApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$ProductDetailResponseApiSuccessResponse._(
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
            r'ProductDetailResponseApiSuccessResponse',
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
