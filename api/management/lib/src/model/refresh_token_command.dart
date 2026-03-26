//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_token_command.g.dart';

/// RefreshTokenCommand
///
/// Properties:
/// * [refreshToken] 
@BuiltValue()
abstract class RefreshTokenCommand implements Built<RefreshTokenCommand, RefreshTokenCommandBuilder> {
  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  RefreshTokenCommand._();

  factory RefreshTokenCommand([void updates(RefreshTokenCommandBuilder b)]) = _$RefreshTokenCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshTokenCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshTokenCommand> get serializer => _$RefreshTokenCommandSerializer();
}

class _$RefreshTokenCommandSerializer implements PrimitiveSerializer<RefreshTokenCommand> {
  @override
  final Iterable<Type> types = const [RefreshTokenCommand, _$RefreshTokenCommand];

  @override
  final String wireName = r'RefreshTokenCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshTokenCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refreshToken != null) {
      yield r'refreshToken';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshTokenCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefreshTokenCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefreshTokenCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshTokenCommandBuilder();
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

