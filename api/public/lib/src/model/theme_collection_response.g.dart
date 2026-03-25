// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_collection_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThemeCollectionResponse extends ThemeCollectionResponse {
  @override
  final String? id;
  @override
  final String? name;

  factory _$ThemeCollectionResponse(
          [void Function(ThemeCollectionResponseBuilder)? updates]) =>
      (ThemeCollectionResponseBuilder()..update(updates))._build();

  _$ThemeCollectionResponse._({this.id, this.name}) : super._();
  @override
  ThemeCollectionResponse rebuild(
          void Function(ThemeCollectionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThemeCollectionResponseBuilder toBuilder() =>
      ThemeCollectionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThemeCollectionResponse &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThemeCollectionResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ThemeCollectionResponseBuilder
    implements
        Builder<ThemeCollectionResponse, ThemeCollectionResponseBuilder> {
  _$ThemeCollectionResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ThemeCollectionResponseBuilder() {
    ThemeCollectionResponse._defaults(this);
  }

  ThemeCollectionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThemeCollectionResponse other) {
    _$v = other as _$ThemeCollectionResponse;
  }

  @override
  void update(void Function(ThemeCollectionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThemeCollectionResponse build() => _build();

  _$ThemeCollectionResponse _build() {
    final _$result = _$v ??
        _$ThemeCollectionResponse._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
