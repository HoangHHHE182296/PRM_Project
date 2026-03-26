// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginationMetadata extends PaginationMetadata {
  @override
  final int? currentPage;
  @override
  final int? pageSize;
  @override
  final int? totalCount;
  @override
  final int? totalPages;
  @override
  final bool? hasNext;
  @override
  final bool? hasPrevious;

  factory _$PaginationMetadata(
          [void Function(PaginationMetadataBuilder)? updates]) =>
      (PaginationMetadataBuilder()..update(updates))._build();

  _$PaginationMetadata._(
      {this.currentPage,
      this.pageSize,
      this.totalCount,
      this.totalPages,
      this.hasNext,
      this.hasPrevious})
      : super._();
  @override
  PaginationMetadata rebuild(
          void Function(PaginationMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationMetadataBuilder toBuilder() =>
      PaginationMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginationMetadata &&
        currentPage == other.currentPage &&
        pageSize == other.pageSize &&
        totalCount == other.totalCount &&
        totalPages == other.totalPages &&
        hasNext == other.hasNext &&
        hasPrevious == other.hasPrevious;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, hasNext.hashCode);
    _$hash = $jc(_$hash, hasPrevious.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginationMetadata')
          ..add('currentPage', currentPage)
          ..add('pageSize', pageSize)
          ..add('totalCount', totalCount)
          ..add('totalPages', totalPages)
          ..add('hasNext', hasNext)
          ..add('hasPrevious', hasPrevious))
        .toString();
  }
}

class PaginationMetadataBuilder
    implements Builder<PaginationMetadata, PaginationMetadataBuilder> {
  _$PaginationMetadata? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  bool? _hasNext;
  bool? get hasNext => _$this._hasNext;
  set hasNext(bool? hasNext) => _$this._hasNext = hasNext;

  bool? _hasPrevious;
  bool? get hasPrevious => _$this._hasPrevious;
  set hasPrevious(bool? hasPrevious) => _$this._hasPrevious = hasPrevious;

  PaginationMetadataBuilder() {
    PaginationMetadata._defaults(this);
  }

  PaginationMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _pageSize = $v.pageSize;
      _totalCount = $v.totalCount;
      _totalPages = $v.totalPages;
      _hasNext = $v.hasNext;
      _hasPrevious = $v.hasPrevious;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginationMetadata other) {
    _$v = other as _$PaginationMetadata;
  }

  @override
  void update(void Function(PaginationMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginationMetadata build() => _build();

  _$PaginationMetadata _build() {
    final _$result = _$v ??
        _$PaginationMetadata._(
          currentPage: currentPage,
          pageSize: pageSize,
          totalCount: totalCount,
          totalPages: totalPages,
          hasNext: hasNext,
          hasPrevious: hasPrevious,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
