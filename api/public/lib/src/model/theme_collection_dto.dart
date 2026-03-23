//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'theme_collection_dto.g.dart';

/// ThemeCollectionDto
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class ThemeCollectionDto implements Built<ThemeCollectionDto, ThemeCollectionDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  ThemeCollectionDto._();

  factory ThemeCollectionDto([void updates(ThemeCollectionDtoBuilder b)]) = _$ThemeCollectionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThemeCollectionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThemeCollectionDto> get serializer => _$ThemeCollectionDtoSerializer();
}

class _$ThemeCollectionDtoSerializer implements PrimitiveSerializer<ThemeCollectionDto> {
  @override
  final Iterable<Type> types = const [ThemeCollectionDto, _$ThemeCollectionDto];

  @override
  final String wireName = r'ThemeCollectionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThemeCollectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThemeCollectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThemeCollectionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThemeCollectionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThemeCollectionDtoBuilder();
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

