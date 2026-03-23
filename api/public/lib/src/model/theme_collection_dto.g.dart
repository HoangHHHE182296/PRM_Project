// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_collection_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThemeCollectionDto extends ThemeCollectionDto {
  @override
  final String? id;
  @override
  final String? name;

  factory _$ThemeCollectionDto(
          [void Function(ThemeCollectionDtoBuilder)? updates]) =>
      (ThemeCollectionDtoBuilder()..update(updates))._build();

  _$ThemeCollectionDto._({this.id, this.name}) : super._();
  @override
  ThemeCollectionDto rebuild(
          void Function(ThemeCollectionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThemeCollectionDtoBuilder toBuilder() =>
      ThemeCollectionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThemeCollectionDto && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'ThemeCollectionDto')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ThemeCollectionDtoBuilder
    implements Builder<ThemeCollectionDto, ThemeCollectionDtoBuilder> {
  _$ThemeCollectionDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ThemeCollectionDtoBuilder() {
    ThemeCollectionDto._defaults(this);
  }

  ThemeCollectionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThemeCollectionDto other) {
    _$v = other as _$ThemeCollectionDto;
  }

  @override
  void update(void Function(ThemeCollectionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThemeCollectionDto build() => _build();

  _$ThemeCollectionDto _build() {
    final _$result = _$v ??
        _$ThemeCollectionDto._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
