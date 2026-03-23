//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:public_openapi/src/model/theme_collection_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'theme_collection_dto_i_enumerable_api_success_response.g.dart';

/// ThemeCollectionDtoIEnumerableApiSuccessResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class ThemeCollectionDtoIEnumerableApiSuccessResponse implements Built<ThemeCollectionDtoIEnumerableApiSuccessResponse, ThemeCollectionDtoIEnumerableApiSuccessResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  int? get statusCode;

  @BuiltValueField(wireName: r'data')
  BuiltList<ThemeCollectionDto>? get data;

  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  ThemeCollectionDtoIEnumerableApiSuccessResponse._();

  factory ThemeCollectionDtoIEnumerableApiSuccessResponse([void updates(ThemeCollectionDtoIEnumerableApiSuccessResponseBuilder b)]) = _$ThemeCollectionDtoIEnumerableApiSuccessResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThemeCollectionDtoIEnumerableApiSuccessResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThemeCollectionDtoIEnumerableApiSuccessResponse> get serializer => _$ThemeCollectionDtoIEnumerableApiSuccessResponseSerializer();
}

class _$ThemeCollectionDtoIEnumerableApiSuccessResponseSerializer implements PrimitiveSerializer<ThemeCollectionDtoIEnumerableApiSuccessResponse> {
  @override
  final Iterable<Type> types = const [ThemeCollectionDtoIEnumerableApiSuccessResponse, _$ThemeCollectionDtoIEnumerableApiSuccessResponse];

  @override
  final String wireName = r'ThemeCollectionDtoIEnumerableApiSuccessResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThemeCollectionDtoIEnumerableApiSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statusCode != null) {
      yield r'statusCode';
      yield serializers.serialize(
        object.statusCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ThemeCollectionDto)]),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThemeCollectionDtoIEnumerableApiSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThemeCollectionDtoIEnumerableApiSuccessResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'statusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.statusCode = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ThemeCollectionDto)]),
          ) as BuiltList<ThemeCollectionDto>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThemeCollectionDtoIEnumerableApiSuccessResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThemeCollectionDtoIEnumerableApiSuccessResponseBuilder();
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

