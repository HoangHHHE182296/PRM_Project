// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_group_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryGroupResponse extends CategoryGroupResponse {
  @override
  final String? parentId;
  @override
  final String? parentName;
  @override
  final BuiltList<CategorySummaryResponse>? categories;

  factory _$CategoryGroupResponse(
          [void Function(CategoryGroupResponseBuilder)? updates]) =>
      (CategoryGroupResponseBuilder()..update(updates))._build();

  _$CategoryGroupResponse._({this.parentId, this.parentName, this.categories})
      : super._();
  @override
  CategoryGroupResponse rebuild(
          void Function(CategoryGroupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryGroupResponseBuilder toBuilder() =>
      CategoryGroupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryGroupResponse &&
        parentId == other.parentId &&
        parentName == other.parentName &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, parentName.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryGroupResponse')
          ..add('parentId', parentId)
          ..add('parentName', parentName)
          ..add('categories', categories))
        .toString();
  }
}

class CategoryGroupResponseBuilder
    implements Builder<CategoryGroupResponse, CategoryGroupResponseBuilder> {
  _$CategoryGroupResponse? _$v;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _parentName;
  String? get parentName => _$this._parentName;
  set parentName(String? parentName) => _$this._parentName = parentName;

  ListBuilder<CategorySummaryResponse>? _categories;
  ListBuilder<CategorySummaryResponse> get categories =>
      _$this._categories ??= ListBuilder<CategorySummaryResponse>();
  set categories(ListBuilder<CategorySummaryResponse>? categories) =>
      _$this._categories = categories;

  CategoryGroupResponseBuilder() {
    CategoryGroupResponse._defaults(this);
  }

  CategoryGroupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parentId = $v.parentId;
      _parentName = $v.parentName;
      _categories = $v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryGroupResponse other) {
    _$v = other as _$CategoryGroupResponse;
  }

  @override
  void update(void Function(CategoryGroupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryGroupResponse build() => _build();

  _$CategoryGroupResponse _build() {
    _$CategoryGroupResponse _$result;
    try {
      _$result = _$v ??
          _$CategoryGroupResponse._(
            parentId: parentId,
            parentName: parentName,
            categories: _categories?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CategoryGroupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
