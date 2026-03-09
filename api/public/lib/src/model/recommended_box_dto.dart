//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommended_box_dto.g.dart';

/// RecommendedBoxDto
///
/// Properties:
/// * [themeName] 
/// * [description] 
/// * [totalEstimatedPrice] 
/// * [suggestedItems] 
@BuiltValue()
abstract class RecommendedBoxDto implements Built<RecommendedBoxDto, RecommendedBoxDtoBuilder> {
  @BuiltValueField(wireName: r'themeName')
  String? get themeName;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'totalEstimatedPrice')
  double? get totalEstimatedPrice;

  @BuiltValueField(wireName: r'suggestedItems')
  BuiltList<String>? get suggestedItems;

  RecommendedBoxDto._();

  factory RecommendedBoxDto([void updates(RecommendedBoxDtoBuilder b)]) = _$RecommendedBoxDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendedBoxDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendedBoxDto> get serializer => _$RecommendedBoxDtoSerializer();
}

class _$RecommendedBoxDtoSerializer implements PrimitiveSerializer<RecommendedBoxDto> {
  @override
  final Iterable<Type> types = const [RecommendedBoxDto, _$RecommendedBoxDto];

  @override
  final String wireName = r'RecommendedBoxDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendedBoxDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.themeName != null) {
      yield r'themeName';
      yield serializers.serialize(
        object.themeName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalEstimatedPrice != null) {
      yield r'totalEstimatedPrice';
      yield serializers.serialize(
        object.totalEstimatedPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.suggestedItems != null) {
      yield r'suggestedItems';
      yield serializers.serialize(
        object.suggestedItems,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendedBoxDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecommendedBoxDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'themeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.themeName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'totalEstimatedPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalEstimatedPrice = valueDes;
          break;
        case r'suggestedItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.suggestedItems.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecommendedBoxDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendedBoxDtoBuilder();
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

