// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderStatus _$pendingPayment = const OrderStatus._('pendingPayment');
const OrderStatus _$paid = const OrderStatus._('paid');
const OrderStatus _$processing = const OrderStatus._('processing');
const OrderStatus _$shipped = const OrderStatus._('shipped');
const OrderStatus _$delivered = const OrderStatus._('delivered');
const OrderStatus _$cancelled = const OrderStatus._('cancelled');
const OrderStatus _$refunded = const OrderStatus._('refunded');
const OrderStatus _$failed = const OrderStatus._('failed');

OrderStatus _$valueOf(String name) {
  switch (name) {
    case 'pendingPayment':
      return _$pendingPayment;
    case 'paid':
      return _$paid;
    case 'processing':
      return _$processing;
    case 'shipped':
      return _$shipped;
    case 'delivered':
      return _$delivered;
    case 'cancelled':
      return _$cancelled;
    case 'refunded':
      return _$refunded;
    case 'failed':
      return _$failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderStatus> _$values =
    BuiltSet<OrderStatus>(const <OrderStatus>[
  _$pendingPayment,
  _$paid,
  _$processing,
  _$shipped,
  _$delivered,
  _$cancelled,
  _$refunded,
  _$failed,
]);

class _$OrderStatusMeta {
  const _$OrderStatusMeta();
  OrderStatus get pendingPayment => _$pendingPayment;
  OrderStatus get paid => _$paid;
  OrderStatus get processing => _$processing;
  OrderStatus get shipped => _$shipped;
  OrderStatus get delivered => _$delivered;
  OrderStatus get cancelled => _$cancelled;
  OrderStatus get refunded => _$refunded;
  OrderStatus get failed => _$failed;
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
    'pendingPayment': 'PendingPayment',
    'paid': 'Paid',
    'processing': 'Processing',
    'shipped': 'Shipped',
    'delivered': 'Delivered',
    'cancelled': 'Cancelled',
    'refunded': 'Refunded',
    'failed': 'Failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PendingPayment': 'pendingPayment',
    'Paid': 'paid',
    'Processing': 'processing',
    'Shipped': 'shipped',
    'Delivered': 'delivered',
    'Cancelled': 'cancelled',
    'Refunded': 'refunded',
    'Failed': 'failed',
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
