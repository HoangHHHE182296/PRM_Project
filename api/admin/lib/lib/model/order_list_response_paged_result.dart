//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:internal_openapi/lib/model/order_list_response.dart';
import 'package:internal_openapi/lib/model/pagination_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_list_response_paged_result.g.dart';

/// OrderListResponsePagedResult
///
/// Properties:
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class OrderListResponsePagedResult implements Built<OrderListResponsePagedResult, OrderListResponsePagedResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<OrderListResponse>? get data;

  @BuiltValueField(wireName: r'metadata')
  PaginationMetadata? get metadata;

  OrderListResponsePagedResult._();

  factory OrderListResponsePagedResult([void updates(OrderListResponsePagedResultBuilder b)]) = _$OrderListResponsePagedResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderListResponsePagedResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderListResponsePagedResult> get serializer => _$OrderListResponsePagedResultSerializer();
}

class _$OrderListResponsePagedResultSerializer implements PrimitiveSerializer<OrderListResponsePagedResult> {
  @override
  final Iterable<Type> types = const [OrderListResponsePagedResult, _$OrderListResponsePagedResult];

  @override
  final String wireName = r'OrderListResponsePagedResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderListResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltList, [FullType(OrderListResponse)]),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(PaginationMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderListResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderListResponsePagedResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(OrderListResponse)]),
          ) as BuiltList<OrderListResponse>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaginationMetadata),
          ) as PaginationMetadata;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderListResponsePagedResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderListResponsePagedResultBuilder();
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

