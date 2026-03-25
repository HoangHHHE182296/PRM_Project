//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:management_openapi/src/model/order_list_response_paged_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_list_response_paged_result_api_success_response.g.dart';

/// OrderListResponsePagedResultApiSuccessResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class OrderListResponsePagedResultApiSuccessResponse implements Built<OrderListResponsePagedResultApiSuccessResponse, OrderListResponsePagedResultApiSuccessResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  int? get statusCode;

  @BuiltValueField(wireName: r'data')
  OrderListResponsePagedResult? get data;

  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  OrderListResponsePagedResultApiSuccessResponse._();

  factory OrderListResponsePagedResultApiSuccessResponse([void updates(OrderListResponsePagedResultApiSuccessResponseBuilder b)]) = _$OrderListResponsePagedResultApiSuccessResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderListResponsePagedResultApiSuccessResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderListResponsePagedResultApiSuccessResponse> get serializer => _$OrderListResponsePagedResultApiSuccessResponseSerializer();
}

class _$OrderListResponsePagedResultApiSuccessResponseSerializer implements PrimitiveSerializer<OrderListResponsePagedResultApiSuccessResponse> {
  @override
  final Iterable<Type> types = const [OrderListResponsePagedResultApiSuccessResponse, _$OrderListResponsePagedResultApiSuccessResponse];

  @override
  final String wireName = r'OrderListResponsePagedResultApiSuccessResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderListResponsePagedResultApiSuccessResponse object, {
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
        specifiedType: const FullType(OrderListResponsePagedResult),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderListResponsePagedResultApiSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderListResponsePagedResultApiSuccessResponseBuilder result,
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
            specifiedType: const FullType(OrderListResponsePagedResult),
          ) as OrderListResponsePagedResult;
          result.data.replace(valueDes);
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderListResponsePagedResultApiSuccessResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderListResponsePagedResultApiSuccessResponseBuilder();
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

