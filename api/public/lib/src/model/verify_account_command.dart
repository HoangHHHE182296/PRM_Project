//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_account_command.g.dart';

/// VerifyAccountCommand
///
/// Properties:
/// * [email] 
/// * [otpCode] 
@BuiltValue()
abstract class VerifyAccountCommand implements Built<VerifyAccountCommand, VerifyAccountCommandBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'otpCode')
  String? get otpCode;

  VerifyAccountCommand._();

  factory VerifyAccountCommand([void updates(VerifyAccountCommandBuilder b)]) = _$VerifyAccountCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyAccountCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyAccountCommand> get serializer => _$VerifyAccountCommandSerializer();
}

class _$VerifyAccountCommandSerializer implements PrimitiveSerializer<VerifyAccountCommand> {
  @override
  final Iterable<Type> types = const [VerifyAccountCommand, _$VerifyAccountCommand];

  @override
  final String wireName = r'VerifyAccountCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyAccountCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.otpCode != null) {
      yield r'otpCode';
      yield serializers.serialize(
        object.otpCode,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyAccountCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyAccountCommandBuilder result,
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
        case r'otpCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otpCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyAccountCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyAccountCommandBuilder();
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

