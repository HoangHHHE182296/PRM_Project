// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductListResponse extends ProductListResponse {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? sku;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? imageUrl;
  @override
  final String? categoryName;
  @override
  final BuiltList<String>? tags;
  @override
  final double? rating;
  @override
  final bool? isInStock;

  factory _$ProductListResponse(
          [void Function(ProductListResponseBuilder)? updates]) =>
      (ProductListResponseBuilder()..update(updates))._build();

  _$ProductListResponse._(
      {this.id,
      this.name,
      this.sku,
      this.price,
      this.description,
      this.type,
      this.imageUrl,
      this.categoryName,
      this.tags,
      this.rating,
      this.isInStock})
      : super._();
  @override
  ProductListResponse rebuild(
          void Function(ProductListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductListResponseBuilder toBuilder() =>
      ProductListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductListResponse &&
        id == other.id &&
        name == other.name &&
        sku == other.sku &&
        price == other.price &&
        description == other.description &&
        type == other.type &&
        imageUrl == other.imageUrl &&
        categoryName == other.categoryName &&
        tags == other.tags &&
        rating == other.rating &&
        isInStock == other.isInStock;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, isInStock.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductListResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('sku', sku)
          ..add('price', price)
          ..add('description', description)
          ..add('type', type)
          ..add('imageUrl', imageUrl)
          ..add('categoryName', categoryName)
          ..add('tags', tags)
          ..add('rating', rating)
          ..add('isInStock', isInStock))
        .toString();
  }
}

class ProductListResponseBuilder
    implements Builder<ProductListResponse, ProductListResponseBuilder> {
  _$ProductListResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  bool? _isInStock;
  bool? get isInStock => _$this._isInStock;
  set isInStock(bool? isInStock) => _$this._isInStock = isInStock;

  ProductListResponseBuilder() {
    ProductListResponse._defaults(this);
  }

  ProductListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _sku = $v.sku;
      _price = $v.price;
      _description = $v.description;
      _type = $v.type;
      _imageUrl = $v.imageUrl;
      _categoryName = $v.categoryName;
      _tags = $v.tags?.toBuilder();
      _rating = $v.rating;
      _isInStock = $v.isInStock;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductListResponse other) {
    _$v = other as _$ProductListResponse;
  }

  @override
  void update(void Function(ProductListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductListResponse build() => _build();

  _$ProductListResponse _build() {
    _$ProductListResponse _$result;
    try {
      _$result = _$v ??
          _$ProductListResponse._(
            id: id,
            name: name,
            sku: sku,
            price: price,
            description: description,
            type: type,
            imageUrl: imageUrl,
            categoryName: categoryName,
            tags: _tags?.build(),
            rating: rating,
            isInStock: isInStock,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
