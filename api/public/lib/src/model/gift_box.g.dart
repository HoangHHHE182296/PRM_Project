// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_box.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GiftBox extends GiftBox {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? imageUrl;

  factory _$GiftBox([void Function(GiftBoxBuilder)? updates]) =>
      (GiftBoxBuilder()..update(updates))._build();

  _$GiftBox._({this.name, this.description, this.price, this.imageUrl})
      : super._();
  @override
  GiftBox rebuild(void Function(GiftBoxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiftBoxBuilder toBuilder() => GiftBoxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiftBox &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GiftBox')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GiftBoxBuilder implements Builder<GiftBox, GiftBoxBuilder> {
  _$GiftBox? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GiftBoxBuilder() {
    GiftBox._defaults(this);
  }

  GiftBoxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GiftBox other) {
    _$v = other as _$GiftBox;
  }

  @override
  void update(void Function(GiftBoxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GiftBox build() => _build();

  _$GiftBox _build() {
    final _$result = _$v ??
        _$GiftBox._(
          name: name,
          description: description,
          price: price,
          imageUrl: imageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
