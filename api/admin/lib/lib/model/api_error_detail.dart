//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_error_detail.g.dart';

/// ApiErrorDetail
///
/// Properties:
/// * [code] 
/// * [description] 
@BuiltValue()
abstract class ApiErrorDetail implements Built<ApiErrorDetail, ApiErrorDetailBuilder> {
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'description')
  String? get description;

  ApiErrorDetail._();

  factory ApiErrorDetail([void updates(ApiErrorDetailBuilder b)]) = _$ApiErrorDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiErrorDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiErrorDetail> get serializer => _$ApiErrorDetailSerializer();
}

class _$ApiErrorDetailSerializer implements PrimitiveSerializer<ApiErrorDetail> {
  @override
  final Iterable<Type> types = const [ApiErrorDetail, _$ApiErrorDetail];

  @override
  final String wireName = r'ApiErrorDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiErrorDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiErrorDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiErrorDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiErrorDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiErrorDetailBuilder();
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

