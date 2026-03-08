// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_paginated_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductResponsePaginatedList extends ProductResponsePaginatedList {
  @override
  final BuiltList<ProductResponse>? items;
  @override
  final int? pageNumber;
  @override
  final int? totalPages;
  @override
  final int? totalCount;
  @override
  final bool? hasPreviousPage;
  @override
  final bool? hasNextPage;

  factory _$ProductResponsePaginatedList(
          [void Function(ProductResponsePaginatedListBuilder)? updates]) =>
      (ProductResponsePaginatedListBuilder()..update(updates))._build();

  _$ProductResponsePaginatedList._(
      {this.items,
      this.pageNumber,
      this.totalPages,
      this.totalCount,
      this.hasPreviousPage,
      this.hasNextPage})
      : super._();
  @override
  ProductResponsePaginatedList rebuild(
          void Function(ProductResponsePaginatedListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductResponsePaginatedListBuilder toBuilder() =>
      ProductResponsePaginatedListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductResponsePaginatedList &&
        items == other.items &&
        pageNumber == other.pageNumber &&
        totalPages == other.totalPages &&
        totalCount == other.totalCount &&
        hasPreviousPage == other.hasPreviousPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, pageNumber.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, hasPreviousPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductResponsePaginatedList')
          ..add('items', items)
          ..add('pageNumber', pageNumber)
          ..add('totalPages', totalPages)
          ..add('totalCount', totalCount)
          ..add('hasPreviousPage', hasPreviousPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class ProductResponsePaginatedListBuilder
    implements
        Builder<ProductResponsePaginatedList,
            ProductResponsePaginatedListBuilder> {
  _$ProductResponsePaginatedList? _$v;

  ListBuilder<ProductResponse>? _items;
  ListBuilder<ProductResponse> get items =>
      _$this._items ??= ListBuilder<ProductResponse>();
  set items(ListBuilder<ProductResponse>? items) => _$this._items = items;

  int? _pageNumber;
  int? get pageNumber => _$this._pageNumber;
  set pageNumber(int? pageNumber) => _$this._pageNumber = pageNumber;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  bool? _hasPreviousPage;
  bool? get hasPreviousPage => _$this._hasPreviousPage;
  set hasPreviousPage(bool? hasPreviousPage) =>
      _$this._hasPreviousPage = hasPreviousPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  ProductResponsePaginatedListBuilder() {
    ProductResponsePaginatedList._defaults(this);
  }

  ProductResponsePaginatedListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _pageNumber = $v.pageNumber;
      _totalPages = $v.totalPages;
      _totalCount = $v.totalCount;
      _hasPreviousPage = $v.hasPreviousPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductResponsePaginatedList other) {
    _$v = other as _$ProductResponsePaginatedList;
  }

  @override
  void update(void Function(ProductResponsePaginatedListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductResponsePaginatedList build() => _build();

  _$ProductResponsePaginatedList _build() {
    _$ProductResponsePaginatedList _$result;
    try {
      _$result = _$v ??
          _$ProductResponsePaginatedList._(
            items: _items?.build(),
            pageNumber: pageNumber,
            totalPages: totalPages,
            totalCount: totalCount,
            hasPreviousPage: hasPreviousPage,
            hasNextPage: hasNextPage,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductResponsePaginatedList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
