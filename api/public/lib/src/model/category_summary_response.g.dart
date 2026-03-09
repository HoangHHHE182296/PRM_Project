// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_summary_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategorySummaryResponse extends CategorySummaryResponse {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;

  factory _$CategorySummaryResponse(
          [void Function(CategorySummaryResponseBuilder)? updates]) =>
      (CategorySummaryResponseBuilder()..update(updates))._build();

  _$CategorySummaryResponse._(
      {this.id, this.name, this.description, this.imageUrl})
      : super._();
  @override
  CategorySummaryResponse rebuild(
          void Function(CategorySummaryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategorySummaryResponseBuilder toBuilder() =>
      CategorySummaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategorySummaryResponse &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategorySummaryResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class CategorySummaryResponseBuilder
    implements
        Builder<CategorySummaryResponse, CategorySummaryResponseBuilder> {
  _$CategorySummaryResponse? _$v;

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

  CategorySummaryResponseBuilder() {
    CategorySummaryResponse._defaults(this);
  }

  CategorySummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategorySummaryResponse other) {
    _$v = other as _$CategorySummaryResponse;
  }

  @override
  void update(void Function(CategorySummaryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategorySummaryResponse build() => _build();

  _$CategorySummaryResponse _build() {
    final _$result = _$v ??
        _$CategorySummaryResponse._(
          id: id,
          name: name,
          description: description,
          imageUrl: imageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
