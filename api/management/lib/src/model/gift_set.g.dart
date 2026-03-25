// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GiftSet extends GiftSet {
  @override
  final String? baseBoxId;
  @override
  final String? boxName;
  @override
  final String? boxTheme;
  @override
  final BuiltList<GiftSetItem>? items;

  factory _$GiftSet([void Function(GiftSetBuilder)? updates]) =>
      (GiftSetBuilder()..update(updates))._build();

  _$GiftSet._({this.baseBoxId, this.boxName, this.boxTheme, this.items})
      : super._();
  @override
  GiftSet rebuild(void Function(GiftSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiftSetBuilder toBuilder() => GiftSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiftSet &&
        baseBoxId == other.baseBoxId &&
        boxName == other.boxName &&
        boxTheme == other.boxTheme &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseBoxId.hashCode);
    _$hash = $jc(_$hash, boxName.hashCode);
    _$hash = $jc(_$hash, boxTheme.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GiftSet')
          ..add('baseBoxId', baseBoxId)
          ..add('boxName', boxName)
          ..add('boxTheme', boxTheme)
          ..add('items', items))
        .toString();
  }
}

class GiftSetBuilder implements Builder<GiftSet, GiftSetBuilder> {
  _$GiftSet? _$v;

  String? _baseBoxId;
  String? get baseBoxId => _$this._baseBoxId;
  set baseBoxId(String? baseBoxId) => _$this._baseBoxId = baseBoxId;

  String? _boxName;
  String? get boxName => _$this._boxName;
  set boxName(String? boxName) => _$this._boxName = boxName;

  String? _boxTheme;
  String? get boxTheme => _$this._boxTheme;
  set boxTheme(String? boxTheme) => _$this._boxTheme = boxTheme;

  ListBuilder<GiftSetItem>? _items;
  ListBuilder<GiftSetItem> get items =>
      _$this._items ??= ListBuilder<GiftSetItem>();
  set items(ListBuilder<GiftSetItem>? items) => _$this._items = items;

  GiftSetBuilder() {
    GiftSet._defaults(this);
  }

  GiftSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseBoxId = $v.baseBoxId;
      _boxName = $v.boxName;
      _boxTheme = $v.boxTheme;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GiftSet other) {
    _$v = other as _$GiftSet;
  }

  @override
  void update(void Function(GiftSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GiftSet build() => _build();

  _$GiftSet _build() {
    _$GiftSet _$result;
    try {
      _$result = _$v ??
          _$GiftSet._(
            baseBoxId: baseBoxId,
            boxName: boxName,
            boxTheme: boxTheme,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GiftSet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
