//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:public_openapi/src/model/user_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_response_api_success_response.g.dart';

/// UserResponseApiSuccessResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
/// * [data] 
@BuiltValue()
abstract class UserResponseApiSuccessResponse implements Built<UserResponseApiSuccessResponse, UserResponseApiSuccessResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  int? get statusCode;

  @BuiltValueField(wireName: r'data')
  UserResponse? get data;

  UserResponseApiSuccessResponse._();

  factory UserResponseApiSuccessResponse([void updates(UserResponseApiSuccessResponseBuilder b)]) = _$UserResponseApiSuccessResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserResponseApiSuccessResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserResponseApiSuccessResponse> get serializer => _$UserResponseApiSuccessResponseSerializer();
}

class _$UserResponseApiSuccessResponseSerializer implements PrimitiveSerializer<UserResponseApiSuccessResponse> {
  @override
  final Iterable<Type> types = const [UserResponseApiSuccessResponse, _$UserResponseApiSuccessResponse];

  @override
  final String wireName = r'UserResponseApiSuccessResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserResponseApiSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statusCode != null) {
      yield r'statusCode';
      yield serializers.serialize(
        object.statusCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(UserResponse),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserResponseApiSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserResponseApiSuccessResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'statusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.statusCode = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserResponse),
          ) as UserResponse;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserResponseApiSuccessResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserResponseApiSuccessResponseBuilder();
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

