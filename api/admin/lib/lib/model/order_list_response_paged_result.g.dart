// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_response_paged_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderListResponsePagedResult extends OrderListResponsePagedResult {
  @override
  final BuiltList<OrderListResponse>? data;
  @override
  final PaginationMetadata? metadata;

  factory _$OrderListResponsePagedResult(
          [void Function(OrderListResponsePagedResultBuilder)? updates]) =>
      (OrderListResponsePagedResultBuilder()..update(updates))._build();

  _$OrderListResponsePagedResult._({this.data, this.metadata}) : super._();
  @override
  OrderListResponsePagedResult rebuild(
          void Function(OrderListResponsePagedResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderListResponsePagedResultBuilder toBuilder() =>
      OrderListResponsePagedResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderListResponsePagedResult &&
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
    return (newBuiltValueToStringHelper(r'OrderListResponsePagedResult')
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class OrderListResponsePagedResultBuilder
    implements
        Builder<OrderListResponsePagedResult,
            OrderListResponsePagedResultBuilder> {
  _$OrderListResponsePagedResult? _$v;

  ListBuilder<OrderListResponse>? _data;
  ListBuilder<OrderListResponse> get data =>
      _$this._data ??= ListBuilder<OrderListResponse>();
  set data(ListBuilder<OrderListResponse>? data) => _$this._data = data;

  PaginationMetadataBuilder? _metadata;
  PaginationMetadataBuilder get metadata =>
      _$this._metadata ??= PaginationMetadataBuilder();
  set metadata(PaginationMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  OrderListResponsePagedResultBuilder() {
    OrderListResponsePagedResult._defaults(this);
  }

  OrderListResponsePagedResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderListResponsePagedResult other) {
    _$v = other as _$OrderListResponsePagedResult;
  }

  @override
  void update(void Function(OrderListResponsePagedResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderListResponsePagedResult build() => _build();

  _$OrderListResponsePagedResult _build() {
    _$OrderListResponsePagedResult _$result;
    try {
      _$result = _$v ??
          _$OrderListResponsePagedResult._(
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
            r'OrderListResponsePagedResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
