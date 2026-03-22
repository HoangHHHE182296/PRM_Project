//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:public_openapi/src/model/recommended_gift_set.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_recommendation_response.g.dart';

/// AiRecommendationResponse
///
/// Properties:
/// * [message] 
/// * [recommendedGiftSets] 
@BuiltValue()
abstract class AiRecommendationResponse implements Built<AiRecommendationResponse, AiRecommendationResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'recommendedGiftSets')
  BuiltList<RecommendedGiftSet>? get recommendedGiftSets;

  AiRecommendationResponse._();

  factory AiRecommendationResponse([void updates(AiRecommendationResponseBuilder b)]) = _$AiRecommendationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiRecommendationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiRecommendationResponse> get serializer => _$AiRecommendationResponseSerializer();
}

class _$AiRecommendationResponseSerializer implements PrimitiveSerializer<AiRecommendationResponse> {
  @override
  final Iterable<Type> types = const [AiRecommendationResponse, _$AiRecommendationResponse];

  @override
  final String wireName = r'AiRecommendationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiRecommendationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recommendedGiftSets != null) {
      yield r'recommendedGiftSets';
      yield serializers.serialize(
        object.recommendedGiftSets,
        specifiedType: const FullType.nullable(BuiltList, [FullType(RecommendedGiftSet)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AiRecommendationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiRecommendationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'recommendedGiftSets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(RecommendedGiftSet)]),
          ) as BuiltList<RecommendedGiftSet>?;
          if (valueDes == null) continue;
          result.recommendedGiftSets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiRecommendationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiRecommendationResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

