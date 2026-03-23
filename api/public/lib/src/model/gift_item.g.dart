// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GiftItem extends GiftItem {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? imageUrl;

  factory _$GiftItem([void Function(GiftItemBuilder)? updates]) =>
      (GiftItemBuilder()..update(updates))._build();

  _$GiftItem._({this.name, this.description, this.price, this.imageUrl})
      : super._();
  @override
  GiftItem rebuild(void Function(GiftItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiftItemBuilder toBuilder() => GiftItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiftItem &&
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
    return (newBuiltValueToStringHelper(r'GiftItem')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GiftItemBuilder implements Builder<GiftItem, GiftItemBuilder> {
  _$GiftItem? _$v;

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

  GiftItemBuilder() {
    GiftItem._defaults(this);
  }

  GiftItemBuilder get _$this {
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
  void replace(GiftItem other) {
    _$v = other as _$GiftItem;
  }

  @override
  void update(void Function(GiftItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GiftItem build() => _build();

  _$GiftItem _build() {
    final _$result = _$v ??
        _$GiftItem._(
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
