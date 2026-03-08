//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_login_command.g.dart';

/// GoogleLoginCommand
///
/// Properties:
/// * [idToken] 
@BuiltValue()
abstract class GoogleLoginCommand implements Built<GoogleLoginCommand, GoogleLoginCommandBuilder> {
  @BuiltValueField(wireName: r'idToken')
  String? get idToken;

  GoogleLoginCommand._();

  factory GoogleLoginCommand([void updates(GoogleLoginCommandBuilder b)]) = _$GoogleLoginCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GoogleLoginCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GoogleLoginCommand> get serializer => _$GoogleLoginCommandSerializer();
}

class _$GoogleLoginCommandSerializer implements PrimitiveSerializer<GoogleLoginCommand> {
  @override
  final Iterable<Type> types = const [GoogleLoginCommand, _$GoogleLoginCommand];

  @override
  final String wireName = r'GoogleLoginCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GoogleLoginCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.idToken != null) {
      yield r'idToken';
      yield serializers.serialize(
        object.idToken,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GoogleLoginCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GoogleLoginCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.idToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GoogleLoginCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GoogleLoginCommandBuilder();
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

