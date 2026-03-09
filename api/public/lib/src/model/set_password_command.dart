//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_password_command.g.dart';

/// SetPasswordCommand
///
/// Properties:
/// * [newPassword] 
@BuiltValue()
abstract class SetPasswordCommand implements Built<SetPasswordCommand, SetPasswordCommandBuilder> {
  @BuiltValueField(wireName: r'newPassword')
  String? get newPassword;

  SetPasswordCommand._();

  factory SetPasswordCommand([void updates(SetPasswordCommandBuilder b)]) = _$SetPasswordCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetPasswordCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetPasswordCommand> get serializer => _$SetPasswordCommandSerializer();
}

class _$SetPasswordCommandSerializer implements PrimitiveSerializer<SetPasswordCommand> {
  @override
  final Iterable<Type> types = const [SetPasswordCommand, _$SetPasswordCommand];

  @override
  final String wireName = r'SetPasswordCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetPasswordCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.newPassword != null) {
      yield r'newPassword';
      yield serializers.serialize(
        object.newPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SetPasswordCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetPasswordCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'newPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.newPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetPasswordCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetPasswordCommandBuilder();
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

