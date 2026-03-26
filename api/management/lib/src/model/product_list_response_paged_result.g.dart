// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response_paged_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductListResponsePagedResult extends ProductListResponsePagedResult {
  @override
  final BuiltList<ProductListResponse>? data;
  @override
  final PaginationMetadata? metadata;

  factory _$ProductListResponsePagedResult(
          [void Function(ProductListResponsePagedResultBuilder)? updates]) =>
      (ProductListResponsePagedResultBuilder()..update(updates))._build();

  _$ProductListResponsePagedResult._({this.data, this.metadata}) : super._();
  @override
  ProductListResponsePagedResult rebuild(
          void Function(ProductListResponsePagedResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductListResponsePagedResultBuilder toBuilder() =>
      ProductListResponsePagedResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductListResponsePagedResult &&
        data == other.data &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductListResponsePagedResult')
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class ProductListResponsePagedResultBuilder
    implements
        Builder<ProductListResponsePagedResult,
            ProductListResponsePagedResultBuilder> {
  _$ProductListResponsePagedResult? _$v;

  ListBuilder<ProductListResponse>? _data;
  ListBuilder<ProductListResponse> get data =>
      _$this._data ??= ListBuilder<ProductListResponse>();
  set data(ListBuilder<ProductListResponse>? data) => _$this._data = data;

  PaginationMetadataBuilder? _metadata;
  PaginationMetadataBuilder get metadata =>
      _$this._metadata ??= PaginationMetadataBuilder();
  set metadata(PaginationMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  ProductListResponsePagedResultBuilder() {
    ProductListResponsePagedResult._defaults(this);
  }

  ProductListResponsePagedResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductListResponsePagedResult other) {
    _$v = other as _$ProductListResponsePagedResult;
  }

  @override
  void update(void Function(ProductListResponsePagedResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductListResponsePagedResult build() => _build();

  _$ProductListResponsePagedResult _build() {
    _$ProductListResponsePagedResult _$result;
    try {
      _$result = _$v ??
          _$ProductListResponsePagedResult._(
            data: _data?.build(),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductListResponsePagedResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
