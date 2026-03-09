//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:public_openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_profile_command.g.dart';

/// UpdateProfileCommand
///
/// Properties:
/// * [userId] 
/// * [firstName] 
/// * [lastName] 
/// * [phone] 
/// * [dateOfBirth] 
/// * [gender] 
@BuiltValue()
abstract class UpdateProfileCommand implements Built<UpdateProfileCommand, UpdateProfileCommandBuilder> {
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'dateOfBirth')
  Date? get dateOfBirth;

  @BuiltValueField(wireName: r'gender')
  String? get gender;

  UpdateProfileCommand._();

  factory UpdateProfileCommand([void updates(UpdateProfileCommandBuilder b)]) = _$UpdateProfileCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateProfileCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateProfileCommand> get serializer => _$UpdateProfileCommandSerializer();
}

class _$UpdateProfileCommandSerializer implements PrimitiveSerializer<UpdateProfileCommand> {
  @override
  final Iterable<Type> types = const [UpdateProfileCommand, _$UpdateProfileCommand];

  @override
  final String wireName = r'UpdateProfileCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateProfileCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(Date),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateProfileCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateProfileCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.dateOfBirth = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gender = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateProfileCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateProfileCommandBuilder();
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

