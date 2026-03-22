// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_gift_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendedGiftSet extends RecommendedGiftSet {
  @override
  final String? giftSetName;
  @override
  final String? description;
  @override
  final double? totalEstimatedPrice;
  @override
  final String? giftSetImageUrl;
  @override
  final GiftBox? box;
  @override
  final BuiltList<GiftItem>? items;

  factory _$RecommendedGiftSet(
          [void Function(RecommendedGiftSetBuilder)? updates]) =>
      (RecommendedGiftSetBuilder()..update(updates))._build();

  _$RecommendedGiftSet._(
      {this.giftSetName,
      this.description,
      this.totalEstimatedPrice,
      this.giftSetImageUrl,
      this.box,
      this.items})
      : super._();
  @override
  RecommendedGiftSet rebuild(
          void Function(RecommendedGiftSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendedGiftSetBuilder toBuilder() =>
      RecommendedGiftSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendedGiftSet &&
        giftSetName == other.giftSetName &&
        description == other.description &&
        totalEstimatedPrice == other.totalEstimatedPrice &&
        giftSetImageUrl == other.giftSetImageUrl &&
        box == other.box &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, giftSetName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, totalEstimatedPrice.hashCode);
    _$hash = $jc(_$hash, giftSetImageUrl.hashCode);
    _$hash = $jc(_$hash, box.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendedGiftSet')
          ..add('giftSetName', giftSetName)
          ..add('description', description)
          ..add('totalEstimatedPrice', totalEstimatedPrice)
          ..add('giftSetImageUrl', giftSetImageUrl)
          ..add('box', box)
          ..add('items', items))
        .toString();
  }
}

class RecommendedGiftSetBuilder
    implements Builder<RecommendedGiftSet, RecommendedGiftSetBuilder> {
  _$RecommendedGiftSet? _$v;

  String? _giftSetName;
  String? get giftSetName => _$this._giftSetName;
  set giftSetName(String? giftSetName) => _$this._giftSetName = giftSetName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _totalEstimatedPrice;
  double? get totalEstimatedPrice => _$this._totalEstimatedPrice;
  set totalEstimatedPrice(double? totalEstimatedPrice) =>
      _$this._totalEstimatedPrice = totalEstimatedPrice;

  String? _giftSetImageUrl;
  String? get giftSetImageUrl => _$this._giftSetImageUrl;
  set giftSetImageUrl(String? giftSetImageUrl) =>
      _$this._giftSetImageUrl = giftSetImageUrl;

  GiftBoxBuilder? _box;
  GiftBoxBuilder get box => _$this._box ??= GiftBoxBuilder();
  set box(GiftBoxBuilder? box) => _$this._box = box;

  ListBuilder<GiftItem>? _items;
  ListBuilder<GiftItem> get items => _$this._items ??= ListBuilder<GiftItem>();
  set items(ListBuilder<GiftItem>? items) => _$this._items = items;

  RecommendedGiftSetBuilder() {
    RecommendedGiftSet._defaults(this);
  }

  RecommendedGiftSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _giftSetName = $v.giftSetName;
      _description = $v.description;
      _totalEstimatedPrice = $v.totalEstimatedPrice;
      _giftSetImageUrl = $v.giftSetImageUrl;
      _box = $v.box?.toBuilder();
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendedGiftSet other) {
    _$v = other as _$RecommendedGiftSet;
  }

  @override
  void update(void Function(RecommendedGiftSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendedGiftSet build() => _build();

  _$RecommendedGiftSet _build() {
    _$RecommendedGiftSet _$result;
    try {
      _$result = _$v ??
          _$RecommendedGiftSet._(
            giftSetName: giftSetName,
            description: description,
            totalEstimatedPrice: totalEstimatedPrice,
            giftSetImageUrl: giftSetImageUrl,
            box: _box?.build(),
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'box';
        _box?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecommendedGiftSet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
