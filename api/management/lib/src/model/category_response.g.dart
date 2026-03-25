// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryResponse extends CategoryResponse {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final ProductType? supportedProductType;
  @override
  final String? imageUrl;
  @override
  final String? parentId;
  @override
  final String? parentName;
  @override
  final BuiltList<CategorySummaryResponse>? children;

  factory _$CategoryResponse(
          [void Function(CategoryResponseBuilder)? updates]) =>
      (CategoryResponseBuilder()..update(updates))._build();

  _$CategoryResponse._(
      {this.name,
      this.description,
      this.supportedProductType,
      this.imageUrl,
      this.parentId,
      this.parentName,
      this.children})
      : super._();
  @override
  CategoryResponse rebuild(void Function(CategoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryResponseBuilder toBuilder() =>
      CategoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryResponse &&
        name == other.name &&
        description == other.description &&
        supportedProductType == other.supportedProductType &&
        imageUrl == other.imageUrl &&
        parentId == other.parentId &&
        parentName == other.parentName &&
        children == other.children;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, supportedProductType.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, parentName.hashCode);
    _$hash = $jc(_$hash, children.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryResponse')
          ..add('name', name)
          ..add('description', description)
          ..add('supportedProductType', supportedProductType)
          ..add('imageUrl', imageUrl)
          ..add('parentId', parentId)
          ..add('parentName', parentName)
          ..add('children', children))
        .toString();
  }
}

class CategoryResponseBuilder
    implements Builder<CategoryResponse, CategoryResponseBuilder> {
  _$CategoryResponse? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ProductType? _supportedProductType;
  ProductType? get supportedProductType => _$this._supportedProductType;
  set supportedProductType(ProductType? supportedProductType) =>
      _$this._supportedProductType = supportedProductType;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _parentName;
  String? get parentName => _$this._parentName;
  set parentName(String? parentName) => _$this._parentName = parentName;

  ListBuilder<CategorySummaryResponse>? _children;
  ListBuilder<CategorySummaryResponse> get children =>
      _$this._children ??= ListBuilder<CategorySummaryResponse>();
  set children(ListBuilder<CategorySummaryResponse>? children) =>
      _$this._children = children;

  CategoryResponseBuilder() {
    CategoryResponse._defaults(this);
  }

  CategoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _supportedProductType = $v.supportedProductType;
      _imageUrl = $v.imageUrl;
      _parentId = $v.parentId;
      _parentName = $v.parentName;
      _children = $v.children?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryResponse other) {
    _$v = other as _$CategoryResponse;
  }

  @override
  void update(void Function(CategoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryResponse build() => _build();

  _$CategoryResponse _build() {
    _$CategoryResponse _$result;
    try {
      _$result = _$v ??
          _$CategoryResponse._(
            name: name,
            description: description,
            supportedProductType: supportedProductType,
            imageUrl: imageUrl,
            parentId: parentId,
            parentName: parentName,
            children: _children?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'children';
        _children?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CategoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
