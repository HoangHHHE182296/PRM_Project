//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reply_feedback_command.g.dart';

/// ReplyFeedbackCommand
///
/// Properties:
/// * [id] 
/// * [responderName] 
/// * [responderUrl] 
/// * [content] 
@BuiltValue()
abstract class ReplyFeedbackCommand implements Built<ReplyFeedbackCommand, ReplyFeedbackCommandBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'responderName')
  String? get responderName;

  @BuiltValueField(wireName: r'responderUrl')
  String? get responderUrl;

  @BuiltValueField(wireName: r'content')
  String? get content;

  ReplyFeedbackCommand._();

  factory ReplyFeedbackCommand([void updates(ReplyFeedbackCommandBuilder b)]) = _$ReplyFeedbackCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReplyFeedbackCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReplyFeedbackCommand> get serializer => _$ReplyFeedbackCommandSerializer();
}

class _$ReplyFeedbackCommandSerializer implements PrimitiveSerializer<ReplyFeedbackCommand> {
  @override
  final Iterable<Type> types = const [ReplyFeedbackCommand, _$ReplyFeedbackCommand];

  @override
  final String wireName = r'ReplyFeedbackCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReplyFeedbackCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.responderName != null) {
      yield r'responderName';
      yield serializers.serialize(
        object.responderName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.responderUrl != null) {
      yield r'responderUrl';
      yield serializers.serialize(
        object.responderUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReplyFeedbackCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReplyFeedbackCommandBuilder result,
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
        case r'responderName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.responderName = valueDes;
          break;
        case r'responderUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.responderUrl = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReplyFeedbackCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplyFeedbackCommandBuilder();
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

