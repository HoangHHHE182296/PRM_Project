// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderStatus _$unpaid = const OrderStatus._('unpaid');
const OrderStatus _$processing = const OrderStatus._('processing');
const OrderStatus _$shipped = const OrderStatus._('shipped');
const OrderStatus _$delivered = const OrderStatus._('delivered');
const OrderStatus _$cancelled = const OrderStatus._('cancelled');
const OrderStatus _$paymentFailed = const OrderStatus._('paymentFailed');

OrderStatus _$valueOf(String name) {
  switch (name) {
    case 'unpaid':
      return _$unpaid;
    case 'processing':
      return _$processing;
    case 'shipped':
      return _$shipped;
    case 'delivered':
      return _$delivered;
    case 'cancelled':
      return _$cancelled;
    case 'paymentFailed':
      return _$paymentFailed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderStatus> _$values =
    BuiltSet<OrderStatus>(const <OrderStatus>[
  _$unpaid,
  _$processing,
  _$shipped,
  _$delivered,
  _$cancelled,
  _$paymentFailed,
]);

class _$OrderStatusMeta {
  const _$OrderStatusMeta();
  OrderStatus get unpaid => _$unpaid;
  OrderStatus get processing => _$processing;
  OrderStatus get shipped => _$shipped;
  OrderStatus get delivered => _$delivered;
  OrderStatus get cancelled => _$cancelled;
  OrderStatus get paymentFailed => _$paymentFailed;
  OrderStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<OrderStatus> get values => _$values;
}

abstract class _$OrderStatusMixin {
  // ignore: non_constant_identifier_names
  _$OrderStatusMeta get OrderStatus => const _$OrderStatusMeta();
}

Serializer<OrderStatus> _$orderStatusSerializer = _$OrderStatusSerializer();

class _$OrderStatusSerializer implements PrimitiveSerializer<OrderStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unpaid': 'Unpaid',
    'processing': 'Processing',
    'shipped': 'Shipped',
    'delivered': 'Delivered',
    'cancelled': 'Cancelled',
    'paymentFailed': 'PaymentFailed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Unpaid': 'unpaid',
    'Processing': 'processing',
    'Shipped': 'shipped',
    'Delivered': 'delivered',
    'Cancelled': 'cancelled',
    'PaymentFailed': 'paymentFailed',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderStatus];
  @override
  final String wireName = 'OrderStatus';

  @override
  Object serialize(Serializers serializers, OrderStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
