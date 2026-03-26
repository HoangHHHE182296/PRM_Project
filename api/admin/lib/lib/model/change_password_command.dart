//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_password_command.g.dart';

/// ChangePasswordCommand
///
/// Properties:
/// * [currentPassword] 
/// * [newPassword] 
@BuiltValue()
abstract class ChangePasswordCommand implements Built<ChangePasswordCommand, ChangePasswordCommandBuilder> {
  @BuiltValueField(wireName: r'currentPassword')
  String? get currentPassword;

  @BuiltValueField(wireName: r'newPassword')
  String? get newPassword;

  ChangePasswordCommand._();

  factory ChangePasswordCommand([void updates(ChangePasswordCommandBuilder b)]) = _$ChangePasswordCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangePasswordCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangePasswordCommand> get serializer => _$ChangePasswordCommandSerializer();
}

class _$ChangePasswordCommandSerializer implements PrimitiveSerializer<ChangePasswordCommand> {
  @override
  final Iterable<Type> types = const [ChangePasswordCommand, _$ChangePasswordCommand];

  @override
  final String wireName = r'ChangePasswordCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangePasswordCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentPassword != null) {
      yield r'currentPassword';
      yield serializers.serialize(
        object.currentPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    ChangePasswordCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangePasswordCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currentPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentPassword = valueDes;
          break;
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
  ChangePasswordCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangePasswordCommandBuilder();
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

