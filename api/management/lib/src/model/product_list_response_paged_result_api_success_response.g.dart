// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response_paged_result_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductListResponsePagedResultApiSuccessResponse
    extends ProductListResponsePagedResultApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final ProductListResponsePagedResult? data;

  factory _$ProductListResponsePagedResultApiSuccessResponse(
          [void Function(
                  ProductListResponsePagedResultApiSuccessResponseBuilder)?
              updates]) =>
      (ProductListResponsePagedResultApiSuccessResponseBuilder()
            ..update(updates))
          ._build();

  _$ProductListResponsePagedResultApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  ProductListResponsePagedResultApiSuccessResponse rebuild(
          void Function(ProductListResponsePagedResultApiSuccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductListResponsePagedResultApiSuccessResponseBuilder toBuilder() =>
      ProductListResponsePagedResultApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductListResponsePagedResultApiSuccessResponse &&
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
            r'ProductListResponsePagedResultApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class ProductListResponsePagedResultApiSuccessResponseBuilder
    implements
        Builder<ProductListResponsePagedResultApiSuccessResponse,
            ProductListResponsePagedResultApiSuccessResponseBuilder> {
  _$ProductListResponsePagedResultApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  ProductListResponsePagedResultBuilder? _data;
  ProductListResponsePagedResultBuilder get data =>
      _$this._data ??= ProductListResponsePagedResultBuilder();
  set data(ProductListResponsePagedResultBuilder? data) => _$this._data = data;

  ProductListResponsePagedResultApiSuccessResponseBuilder() {
    ProductListResponsePagedResultApiSuccessResponse._defaults(this);
  }

  ProductListResponsePagedResultApiSuccessResponseBuilder get _$this {
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
  void replace(ProductListResponsePagedResultApiSuccessResponse other) {
    _$v = other as _$ProductListResponsePagedResultApiSuccessResponse;
  }

  @override
  void update(
      void Function(ProductListResponsePagedResultApiSuccessResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductListResponsePagedResultApiSuccessResponse build() => _build();

  _$ProductListResponsePagedResultApiSuccessResponse _build() {
    _$ProductListResponsePagedResultApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$ProductListResponsePagedResultApiSuccessResponse._(
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
            r'ProductListResponsePagedResultApiSuccessResponse',
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
