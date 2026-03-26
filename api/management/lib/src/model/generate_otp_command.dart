//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generate_otp_command.g.dart';

/// GenerateOtpCommand
///
/// Properties:
/// * [email] 
@BuiltValue()
abstract class GenerateOtpCommand implements Built<GenerateOtpCommand, GenerateOtpCommandBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  GenerateOtpCommand._();

  factory GenerateOtpCommand([void updates(GenerateOtpCommandBuilder b)]) = _$GenerateOtpCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GenerateOtpCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GenerateOtpCommand> get serializer => _$GenerateOtpCommandSerializer();
}

class _$GenerateOtpCommandSerializer implements PrimitiveSerializer<GenerateOtpCommand> {
  @override
  final Iterable<Type> types = const [GenerateOtpCommand, _$GenerateOtpCommand];

  @override
  final String wireName = r'GenerateOtpCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GenerateOtpCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GenerateOtpCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GenerateOtpCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GenerateOtpCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateOtpCommandBuilder();
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

