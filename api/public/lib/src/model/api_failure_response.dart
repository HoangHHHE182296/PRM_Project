//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:public_openapi/src/model/api_error_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_failure_response.g.dart';

/// ApiFailureResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
/// * [error] 
@BuiltValue()
abstract class ApiFailureResponse implements Built<ApiFailureResponse, ApiFailureResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  int? get statusCode;

  @BuiltValueField(wireName: r'error')
  ApiErrorDetail? get error;

  ApiFailureResponse._();

  factory ApiFailureResponse([void updates(ApiFailureResponseBuilder b)]) = _$ApiFailureResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiFailureResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiFailureResponse> get serializer => _$ApiFailureResponseSerializer();
}

class _$ApiFailureResponseSerializer implements PrimitiveSerializer<ApiFailureResponse> {
  @override
  final Iterable<Type> types = const [ApiFailureResponse, _$ApiFailureResponse];

  @override
  final String wireName = r'ApiFailureResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiFailureResponse object, {
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
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(ApiErrorDetail),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiFailureResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiFailureResponseBuilder result,
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
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiErrorDetail),
          ) as ApiErrorDetail;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiFailureResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiFailureResponseBuilder();
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

