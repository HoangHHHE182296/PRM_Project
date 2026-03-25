// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_set_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GiftSetItem extends GiftSetItem {
  @override
  final String? componentId;
  @override
  final String? componentName;
  @override
  final String? material;
  @override
  final String? thumbnailUrl;
  @override
  final int? quantity;

  factory _$GiftSetItem([void Function(GiftSetItemBuilder)? updates]) =>
      (GiftSetItemBuilder()..update(updates))._build();

  _$GiftSetItem._(
      {this.componentId,
      this.componentName,
      this.material,
      this.thumbnailUrl,
      this.quantity})
      : super._();
  @override
  GiftSetItem rebuild(void Function(GiftSetItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiftSetItemBuilder toBuilder() => GiftSetItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiftSetItem &&
        componentId == other.componentId &&
        componentName == other.componentName &&
        material == other.material &&
        thumbnailUrl == other.thumbnailUrl &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, componentId.hashCode);
    _$hash = $jc(_$hash, componentName.hashCode);
    _$hash = $jc(_$hash, material.hashCode);
    _$hash = $jc(_$hash, thumbnailUrl.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GiftSetItem')
          ..add('componentId', componentId)
          ..add('componentName', componentName)
          ..add('material', material)
          ..add('thumbnailUrl', thumbnailUrl)
          ..add('quantity', quantity))
        .toString();
  }
}

class GiftSetItemBuilder implements Builder<GiftSetItem, GiftSetItemBuilder> {
  _$GiftSetItem? _$v;

  String? _componentId;
  String? get componentId => _$this._componentId;
  set componentId(String? componentId) => _$this._componentId = componentId;

  String? _componentName;
  String? get componentName => _$this._componentName;
  set componentName(String? componentName) =>
      _$this._componentName = componentName;

  String? _material;
  String? get material => _$this._material;
  set material(String? material) => _$this._material = material;

  String? _thumbnailUrl;
  String? get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String? thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  GiftSetItemBuilder() {
    GiftSetItem._defaults(this);
  }

  GiftSetItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _componentId = $v.componentId;
      _componentName = $v.componentName;
      _material = $v.material;
      _thumbnailUrl = $v.thumbnailUrl;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GiftSetItem other) {
    _$v = other as _$GiftSetItem;
  }

  @override
  void update(void Function(GiftSetItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GiftSetItem build() => _build();

  _$GiftSetItem _build() {
    final _$result = _$v ??
        _$GiftSetItem._(
          componentId: componentId,
          componentName: componentName,
          material: material,
          thumbnailUrl: thumbnailUrl,
          quantity: quantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
