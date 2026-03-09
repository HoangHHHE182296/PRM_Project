// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_box_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendedBoxDto extends RecommendedBoxDto {
  @override
  final String? themeName;
  @override
  final String? description;
  @override
  final double? totalEstimatedPrice;
  @override
  final BuiltList<String>? suggestedItems;

  factory _$RecommendedBoxDto(
          [void Function(RecommendedBoxDtoBuilder)? updates]) =>
      (RecommendedBoxDtoBuilder()..update(updates))._build();

  _$RecommendedBoxDto._(
      {this.themeName,
      this.description,
      this.totalEstimatedPrice,
      this.suggestedItems})
      : super._();
  @override
  RecommendedBoxDto rebuild(void Function(RecommendedBoxDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendedBoxDtoBuilder toBuilder() =>
      RecommendedBoxDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendedBoxDto &&
        themeName == other.themeName &&
        description == other.description &&
        totalEstimatedPrice == other.totalEstimatedPrice &&
        suggestedItems == other.suggestedItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, themeName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, totalEstimatedPrice.hashCode);
    _$hash = $jc(_$hash, suggestedItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendedBoxDto')
          ..add('themeName', themeName)
          ..add('description', description)
          ..add('totalEstimatedPrice', totalEstimatedPrice)
          ..add('suggestedItems', suggestedItems))
        .toString();
  }
}

class RecommendedBoxDtoBuilder
    implements Builder<RecommendedBoxDto, RecommendedBoxDtoBuilder> {
  _$RecommendedBoxDto? _$v;

  String? _themeName;
  String? get themeName => _$this._themeName;
  set themeName(String? themeName) => _$this._themeName = themeName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _totalEstimatedPrice;
  double? get totalEstimatedPrice => _$this._totalEstimatedPrice;
  set totalEstimatedPrice(double? totalEstimatedPrice) =>
      _$this._totalEstimatedPrice = totalEstimatedPrice;

  ListBuilder<String>? _suggestedItems;
  ListBuilder<String> get suggestedItems =>
      _$this._suggestedItems ??= ListBuilder<String>();
  set suggestedItems(ListBuilder<String>? suggestedItems) =>
      _$this._suggestedItems = suggestedItems;

  RecommendedBoxDtoBuilder() {
    RecommendedBoxDto._defaults(this);
  }

  RecommendedBoxDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _themeName = $v.themeName;
      _description = $v.description;
      _totalEstimatedPrice = $v.totalEstimatedPrice;
      _suggestedItems = $v.suggestedItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendedBoxDto other) {
    _$v = other as _$RecommendedBoxDto;
  }

  @override
  void update(void Function(RecommendedBoxDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendedBoxDto build() => _build();

  _$RecommendedBoxDto _build() {
    _$RecommendedBoxDto _$result;
    try {
      _$result = _$v ??
          _$RecommendedBoxDto._(
            themeName: themeName,
            description: description,
            totalEstimatedPrice: totalEstimatedPrice,
            suggestedItems: _suggestedItems?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestedItems';
        _suggestedItems?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecommendedBoxDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
