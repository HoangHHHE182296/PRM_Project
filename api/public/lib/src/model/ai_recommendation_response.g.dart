// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_recommendation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AiRecommendationResponse extends AiRecommendationResponse {
  @override
  final String? message;
  @override
  final BuiltList<RecommendedGiftSet>? recommendedGiftSets;

  factory _$AiRecommendationResponse(
          [void Function(AiRecommendationResponseBuilder)? updates]) =>
      (AiRecommendationResponseBuilder()..update(updates))._build();

  _$AiRecommendationResponse._({this.message, this.recommendedGiftSets})
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
        recommendedGiftSets == other.recommendedGiftSets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, recommendedGiftSets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AiRecommendationResponse')
          ..add('message', message)
          ..add('recommendedGiftSets', recommendedGiftSets))
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

  ListBuilder<RecommendedGiftSet>? _recommendedGiftSets;
  ListBuilder<RecommendedGiftSet> get recommendedGiftSets =>
      _$this._recommendedGiftSets ??= ListBuilder<RecommendedGiftSet>();
  set recommendedGiftSets(
          ListBuilder<RecommendedGiftSet>? recommendedGiftSets) =>
      _$this._recommendedGiftSets = recommendedGiftSets;

  AiRecommendationResponseBuilder() {
    AiRecommendationResponse._defaults(this);
  }

  AiRecommendationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _recommendedGiftSets = $v.recommendedGiftSets?.toBuilder();
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
            recommendedGiftSets: _recommendedGiftSets?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recommendedGiftSets';
        _recommendedGiftSets?.build();
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
