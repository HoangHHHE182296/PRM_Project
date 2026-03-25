//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:management_openapi/src/model/order_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_order_status_command.g.dart';

/// UpdateOrderStatusCommand
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class UpdateOrderStatusCommand implements Built<UpdateOrderStatusCommand, UpdateOrderStatusCommandBuilder> {
  @BuiltValueField(wireName: r'status')
  OrderStatus? get status;
  // enum statusEnum {  Unpaid,  Processing,  Shipped,  Delivered,  Cancelled,  PaymentFailed,  };

  UpdateOrderStatusCommand._();

  factory UpdateOrderStatusCommand([void updates(UpdateOrderStatusCommandBuilder b)]) = _$UpdateOrderStatusCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateOrderStatusCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateOrderStatusCommand> get serializer => _$UpdateOrderStatusCommandSerializer();
}

class _$UpdateOrderStatusCommandSerializer implements PrimitiveSerializer<UpdateOrderStatusCommand> {
  @override
  final Iterable<Type> types = const [UpdateOrderStatusCommand, _$UpdateOrderStatusCommand];

  @override
  final String wireName = r'UpdateOrderStatusCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateOrderStatusCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(OrderStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateOrderStatusCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateOrderStatusCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderStatus),
          ) as OrderStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateOrderStatusCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateOrderStatusCommandBuilder();
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

