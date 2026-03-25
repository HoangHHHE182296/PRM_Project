// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_summary_response_paged_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategorySummaryResponsePagedResult
    extends CategorySummaryResponsePagedResult {
  @override
  final BuiltList<CategorySummaryResponse>? data;
  @override
  final PaginationMetadata? metadata;

  factory _$CategorySummaryResponsePagedResult(
          [void Function(CategorySummaryResponsePagedResultBuilder)?
              updates]) =>
      (CategorySummaryResponsePagedResultBuilder()..update(updates))._build();

  _$CategorySummaryResponsePagedResult._({this.data, this.metadata})
      : super._();
  @override
  CategorySummaryResponsePagedResult rebuild(
          void Function(CategorySummaryResponsePagedResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategorySummaryResponsePagedResultBuilder toBuilder() =>
      CategorySummaryResponsePagedResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategorySummaryResponsePagedResult &&
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
    return (newBuiltValueToStringHelper(r'CategorySummaryResponsePagedResult')
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class CategorySummaryResponsePagedResultBuilder
    implements
        Builder<CategorySummaryResponsePagedResult,
            CategorySummaryResponsePagedResultBuilder> {
  _$CategorySummaryResponsePagedResult? _$v;

  ListBuilder<CategorySummaryResponse>? _data;
  ListBuilder<CategorySummaryResponse> get data =>
      _$this._data ??= ListBuilder<CategorySummaryResponse>();
  set data(ListBuilder<CategorySummaryResponse>? data) => _$this._data = data;

  PaginationMetadataBuilder? _metadata;
  PaginationMetadataBuilder get metadata =>
      _$this._metadata ??= PaginationMetadataBuilder();
  set metadata(PaginationMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  CategorySummaryResponsePagedResultBuilder() {
    CategorySummaryResponsePagedResult._defaults(this);
  }

  CategorySummaryResponsePagedResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategorySummaryResponsePagedResult other) {
    _$v = other as _$CategorySummaryResponsePagedResult;
  }

  @override
  void update(
      void Function(CategorySummaryResponsePagedResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategorySummaryResponsePagedResult build() => _build();

  _$CategorySummaryResponsePagedResult _build() {
    _$CategorySummaryResponsePagedResult _$result;
    try {
      _$result = _$v ??
          _$CategorySummaryResponsePagedResult._(
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
            r'CategorySummaryResponsePagedResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
