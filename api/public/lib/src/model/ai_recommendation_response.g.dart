// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_recommendation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AiRecommendationResponse extends AiRecommendationResponse {
  @override
  final String? message;
  @override
  final BuiltList<RecommendedBoxDto>? recommendedBoxes;

  factory _$AiRecommendationResponse(
          [void Function(AiRecommendationResponseBuilder)? updates]) =>
      (AiRecommendationResponseBuilder()..update(updates))._build();

  _$AiRecommendationResponse._({this.message, this.recommendedBoxes})
      : super._();
  @override
  AiRecommendationResponse rebuild(
          void Function(AiRecommendationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AiRecommendationResponseBuilder toBuilder() =>
      AiRecommendationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AiRecommendationResponse &&
        message == other.message &&
        recommendedBoxes == other.recommendedBoxes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, recommendedBoxes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AiRecommendationResponse')
          ..add('message', message)
          ..add('recommendedBoxes', recommendedBoxes))
        .toString();
  }
}

class AiRecommendationResponseBuilder
    implements
        Builder<AiRecommendationResponse, AiRecommendationResponseBuilder> {
  _$AiRecommendationResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<RecommendedBoxDto>? _recommendedBoxes;
  ListBuilder<RecommendedBoxDto> get recommendedBoxes =>
      _$this._recommendedBoxes ??= ListBuilder<RecommendedBoxDto>();
  set recommendedBoxes(ListBuilder<RecommendedBoxDto>? recommendedBoxes) =>
      _$this._recommendedBoxes = recommendedBoxes;

  AiRecommendationResponseBuilder() {
    AiRecommendationResponse._defaults(this);
  }

  AiRecommendationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _recommendedBoxes = $v.recommendedBoxes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AiRecommendationResponse other) {
    _$v = other as _$AiRecommendationResponse;
  }

  @override
  void update(void Function(AiRecommendationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AiRecommendationResponse build() => _build();

  _$AiRecommendationResponse _build() {
    _$AiRecommendationResponse _$result;
    try {
      _$result = _$v ??
          _$AiRecommendationResponse._(
            message: message,
            recommendedBoxes: _recommendedBoxes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recommendedBoxes';
        _recommendedBoxes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AiRecommendationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
