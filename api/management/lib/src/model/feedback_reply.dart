//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback_reply.g.dart';

/// FeedbackReply
///
/// Properties:
/// * [responderName] 
/// * [responderUrl] 
/// * [content] 
/// * [replyTime] 
@BuiltValue()
abstract class FeedbackReply implements Built<FeedbackReply, FeedbackReplyBuilder> {
  @BuiltValueField(wireName: r'responderName')
  String? get responderName;

  @BuiltValueField(wireName: r'responderUrl')
  String? get responderUrl;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'replyTime')
  DateTime? get replyTime;

  FeedbackReply._();

  factory FeedbackReply([void updates(FeedbackReplyBuilder b)]) = _$FeedbackReply;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeedbackReplyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeedbackReply> get serializer => _$FeedbackReplySerializer();
}

class _$FeedbackReplySerializer implements PrimitiveSerializer<FeedbackReply> {
  @override
  final Iterable<Type> types = const [FeedbackReply, _$FeedbackReply];

  @override
  final String wireName = r'FeedbackReply';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeedbackReply object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.replyTime != null) {
      yield r'replyTime';
      yield serializers.serialize(
        object.replyTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeedbackReply object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FeedbackReplyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'replyTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.replyTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeedbackReply deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeedbackReplyBuilder();
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

