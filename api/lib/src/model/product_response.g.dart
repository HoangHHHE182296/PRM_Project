// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductResponse extends ProductResponse {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final String? sku;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final int? typeId;
  @override
  final String? typeName;
  @override
  final String? categoryId;
  @override
  final String? categoryName;
  @override
  final String? status;
  @override
  final int? stockQuantity;
  @override
  final int? lowStockThreshold;

  factory _$ProductResponse([void Function(ProductResponseBuilder)? updates]) =>
      (ProductResponseBuilder()..update(updates))._build();

  _$ProductResponse._(
      {this.id,
      this.name,
      this.price,
      this.sku,
      this.description,
      this.imageUrl,
      this.typeId,
      this.typeName,
      this.categoryId,
      this.categoryName,
      this.status,
      this.stockQuantity,
      this.lowStockThreshold})
      : super._();
  @override
  ProductResponse rebuild(void Function(ProductResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductResponseBuilder toBuilder() => ProductResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductResponse &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        sku == other.sku &&
        description == other.description &&
        imageUrl == other.imageUrl &&
        typeId == other.typeId &&
        typeName == other.typeName &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        status == other.status &&
        stockQuantity == other.stockQuantity &&
        lowStockThreshold == other.lowStockThreshold;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, stockQuantity.hashCode);
    _$hash = $jc(_$hash, lowStockThreshold.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('sku', sku)
          ..add('description', description)
          ..add('imageUrl', imageUrl)
          ..add('typeId', typeId)
          ..add('typeName', typeName)
          ..add('categoryId', categoryId)
          ..add('categoryName', categoryName)
          ..add('status', status)
          ..add('stockQuantity', stockQuantity)
          ..add('lowStockThreshold', lowStockThreshold))
        .toString();
  }
}

class ProductResponseBuilder
    implements Builder<ProductResponse, ProductResponseBuilder> {
  _$ProductResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  int? _typeId;
  int? get typeId => _$this._typeId;
  set typeId(int? typeId) => _$this._typeId = typeId;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _categoryId;
  String? get categoryId => _$this._categoryId;
  set categoryId(String? categoryId) => _$this._categoryId = categoryId;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _stockQuantity;
  int? get stockQuantity => _$this._stockQuantity;
  set stockQuantity(int? stockQuantity) =>
      _$this._stockQuantity = stockQuantity;

  int? _lowStockThreshold;
  int? get lowStockThreshold => _$this._lowStockThreshold;
  set lowStockThreshold(int? lowStockThreshold) =>
      _$this._lowStockThreshold = lowStockThreshold;

  ProductResponseBuilder() {
    ProductResponse._defaults(this);
  }

  ProductResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _price = $v.price;
      _sku = $v.sku;
      _description = $v.description;
      _imageUrl = $v.imageUrl;
      _typeId = $v.typeId;
      _typeName = $v.typeName;
      _categoryId = $v.categoryId;
      _categoryName = $v.categoryName;
      _status = $v.status;
      _stockQuantity = $v.stockQuantity;
      _lowStockThreshold = $v.lowStockThreshold;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductResponse other) {
    _$v = other as _$ProductResponse;
  }

  @override
  void update(void Function(ProductResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductResponse build() => _build();

  _$ProductResponse _build() {
    final _$result = _$v ??
        _$ProductResponse._(
          id: id,
          name: name,
          price: price,
          sku: sku,
          description: description,
          imageUrl: imageUrl,
          typeId: typeId,
          typeName: typeName,
          categoryId: categoryId,
          categoryName: categoryName,
          status: status,
          stockQuantity: stockQuantity,
          lowStockThreshold: lowStockThreshold,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
