//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_consultation_message_command.g.dart';

/// SendConsultationMessageCommand
///
/// Properties:
/// * [sessionId] 
/// * [message] 
@BuiltValue()
abstract class SendConsultationMessageCommand implements Built<SendConsultationMessageCommand, SendConsultationMessageCommandBuilder> {
  @BuiltValueField(wireName: r'sessionId')
  String? get sessionId;

  @BuiltValueField(wireName: r'message')
  String? get message;

  SendConsultationMessageCommand._();

  factory SendConsultationMessageCommand([void updates(SendConsultationMessageCommandBuilder b)]) = _$SendConsultationMessageCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendConsultationMessageCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendConsultationMessageCommand> get serializer => _$SendConsultationMessageCommandSerializer();
}

class _$SendConsultationMessageCommandSerializer implements PrimitiveSerializer<SendConsultationMessageCommand> {
  @override
  final Iterable<Type> types = const [SendConsultationMessageCommand, _$SendConsultationMessageCommand];

  @override
  final String wireName = r'SendConsultationMessageCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendConsultationMessageCommand object, {
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
    SendConsultationMessageCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendConsultationMessageCommandBuilder result,
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
  SendConsultationMessageCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendConsultationMessageCommandBuilder();
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

