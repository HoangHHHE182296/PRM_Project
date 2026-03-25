// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCategoryCommand extends CreateCategoryCommand {
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

  factory _$CreateCategoryCommand(
          [void Function(CreateCategoryCommandBuilder)? updates]) =>
      (CreateCategoryCommandBuilder()..update(updates))._build();

  _$CreateCategoryCommand._(
      {this.name,
      this.description,
      this.imageUrl,
      this.supportedProductType,
      this.parentCategoryId})
      : super._();
  @override
  CreateCategoryCommand rebuild(
          void Function(CreateCategoryCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCategoryCommandBuilder toBuilder() =>
      CreateCategoryCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCategoryCommand &&
        name == other.name &&
        description == other.description &&
        imageUrl == other.imageUrl &&
        supportedProductType == other.supportedProductType &&
        parentCategoryId == other.parentCategoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'CreateCategoryCommand')
          ..add('name', name)
          ..add('description', description)
          ..add('imageUrl', imageUrl)
          ..add('supportedProductType', supportedProductType)
          ..add('parentCategoryId', parentCategoryId))
        .toString();
  }
}

class CreateCategoryCommandBuilder
    implements Builder<CreateCategoryCommand, CreateCategoryCommandBuilder> {
  _$CreateCategoryCommand? _$v;

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

  CreateCategoryCommandBuilder() {
    CreateCategoryCommand._defaults(this);
  }

  CreateCategoryCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(CreateCategoryCommand other) {
    _$v = other as _$CreateCategoryCommand;
  }

  @override
  void update(void Function(CreateCategoryCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCategoryCommand build() => _build();

  _$CreateCategoryCommand _build() {
    final _$result = _$v ??
        _$CreateCategoryCommand._(
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
