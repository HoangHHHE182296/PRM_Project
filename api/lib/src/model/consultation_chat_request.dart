//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consultation_chat_request.g.dart';

/// ConsultationChatRequest
///
/// Properties:
/// * [sessionId] 
/// * [message] 
@BuiltValue()
abstract class ConsultationChatRequest implements Built<ConsultationChatRequest, ConsultationChatRequestBuilder> {
  @BuiltValueField(wireName: r'sessionId')
  String? get sessionId;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ConsultationChatRequest._();

  factory ConsultationChatRequest([void updates(ConsultationChatRequestBuilder b)]) = _$ConsultationChatRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsultationChatRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsultationChatRequest> get serializer => _$ConsultationChatRequestSerializer();
}

class _$ConsultationChatRequestSerializer implements PrimitiveSerializer<ConsultationChatRequest> {
  @override
  final Iterable<Type> types = const [ConsultationChatRequest, _$ConsultationChatRequest];

  @override
  final String wireName = r'ConsultationChatRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsultationChatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sessionId != null) {
      yield r'sessionId';
      yield serializers.serialize(
        object.sessionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsultationChatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsultationChatRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sessionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsultationChatRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsultationChatRequestBuilder();
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

