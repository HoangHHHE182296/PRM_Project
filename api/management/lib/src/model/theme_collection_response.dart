//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'theme_collection_response.g.dart';

/// ThemeCollectionResponse
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class ThemeCollectionResponse implements Built<ThemeCollectionResponse, ThemeCollectionResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  ThemeCollectionResponse._();

  factory ThemeCollectionResponse([void updates(ThemeCollectionResponseBuilder b)]) = _$ThemeCollectionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThemeCollectionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThemeCollectionResponse> get serializer => _$ThemeCollectionResponseSerializer();
}

class _$ThemeCollectionResponseSerializer implements PrimitiveSerializer<ThemeCollectionResponse> {
  @override
  final Iterable<Type> types = const [ThemeCollectionResponse, _$ThemeCollectionResponse];

  @override
  final String wireName = r'ThemeCollectionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThemeCollectionResponse object, {
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
    ThemeCollectionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThemeCollectionResponseBuilder result,
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
  ThemeCollectionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThemeCollectionResponseBuilder();
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

