// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_set_includes_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GiftSetIncludesResponse extends GiftSetIncludesResponse {
  @override
  final String? baseBoxId;
  @override
  final String? boxName;
  @override
  final String? boxTheme;
  @override
  final BuiltList<GiftSetItemResponse>? items;

  factory _$GiftSetIncludesResponse(
          [void Function(GiftSetIncludesResponseBuilder)? updates]) =>
      (GiftSetIncludesResponseBuilder()..update(updates))._build();

  _$GiftSetIncludesResponse._(
      {this.baseBoxId, this.boxName, this.boxTheme, this.items})
      : super._();
  @override
  GiftSetIncludesResponse rebuild(
          void Function(GiftSetIncludesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiftSetIncludesResponseBuilder toBuilder() =>
      GiftSetIncludesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiftSetIncludesResponse &&
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
    return (newBuiltValueToStringHelper(r'GiftSetIncludesResponse')
          ..add('baseBoxId', baseBoxId)
          ..add('boxName', boxName)
          ..add('boxTheme', boxTheme)
          ..add('items', items))
        .toString();
  }
}

class GiftSetIncludesResponseBuilder
    implements
        Builder<GiftSetIncludesResponse, GiftSetIncludesResponseBuilder> {
  _$GiftSetIncludesResponse? _$v;

  String? _baseBoxId;
  String? get baseBoxId => _$this._baseBoxId;
  set baseBoxId(String? baseBoxId) => _$this._baseBoxId = baseBoxId;

  String? _boxName;
  String? get boxName => _$this._boxName;
  set boxName(String? boxName) => _$this._boxName = boxName;

  String? _boxTheme;
  String? get boxTheme => _$this._boxTheme;
  set boxTheme(String? boxTheme) => _$this._boxTheme = boxTheme;

  ListBuilder<GiftSetItemResponse>? _items;
  ListBuilder<GiftSetItemResponse> get items =>
      _$this._items ??= ListBuilder<GiftSetItemResponse>();
  set items(ListBuilder<GiftSetItemResponse>? items) => _$this._items = items;

  GiftSetIncludesResponseBuilder() {
    GiftSetIncludesResponse._defaults(this);
  }

  GiftSetIncludesResponseBuilder get _$this {
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
  void replace(GiftSetIncludesResponse other) {
    _$v = other as _$GiftSetIncludesResponse;
  }

  @override
  void update(void Function(GiftSetIncludesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GiftSetIncludesResponse build() => _build();

  _$GiftSetIncludesResponse _build() {
    _$GiftSetIncludesResponse _$result;
    try {
      _$result = _$v ??
          _$GiftSetIncludesResponse._(
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
            r'GiftSetIncludesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
