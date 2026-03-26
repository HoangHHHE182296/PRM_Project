// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCategoryCommand extends UpdateCategoryCommand {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final ProductType? supportedProductType;
  @override
  final String? parentCategoryId;

  factory _$UpdateCategoryCommand(
          [void Function(UpdateCategoryCommandBuilder)? updates]) =>
      (UpdateCategoryCommandBuilder()..update(updates))._build();

  _$UpdateCategoryCommand._(
      {this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.supportedProductType,
      this.parentCategoryId})
      : super._();
  @override
  UpdateCategoryCommand rebuild(
          void Function(UpdateCategoryCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateCategoryCommandBuilder toBuilder() =>
      UpdateCategoryCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCategoryCommand &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        imageUrl == other.imageUrl &&
        supportedProductType == other.supportedProductType &&
        parentCategoryId == other.parentCategoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, supportedProductType.hashCode);
    _$hash = $jc(_$hash, parentCategoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCategoryCommand')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('imageUrl', imageUrl)
          ..add('supportedProductType', supportedProductType)
          ..add('parentCategoryId', parentCategoryId))
        .toString();
  }
}

class UpdateCategoryCommandBuilder
    implements Builder<UpdateCategoryCommand, UpdateCategoryCommandBuilder> {
  _$UpdateCategoryCommand? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  ProductType? _supportedProductType;
  ProductType? get supportedProductType => _$this._supportedProductType;
  set supportedProductType(ProductType? supportedProductType) =>
      _$this._supportedProductType = supportedProductType;

  String? _parentCategoryId;
  String? get parentCategoryId => _$this._parentCategoryId;
  set parentCategoryId(String? parentCategoryId) =>
      _$this._parentCategoryId = parentCategoryId;

  UpdateCategoryCommandBuilder() {
    UpdateCategoryCommand._defaults(this);
  }

  UpdateCategoryCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _imageUrl = $v.imageUrl;
      _supportedProductType = $v.supportedProductType;
      _parentCategoryId = $v.parentCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCategoryCommand other) {
    _$v = other as _$UpdateCategoryCommand;
  }

  @override
  void update(void Function(UpdateCategoryCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCategoryCommand build() => _build();

  _$UpdateCategoryCommand _build() {
    final _$result = _$v ??
        _$UpdateCategoryCommand._(
          id: id,
          name: name,
          description: description,
          imageUrl: imageUrl,
          supportedProductType: supportedProductType,
          parentCategoryId: parentCategoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
