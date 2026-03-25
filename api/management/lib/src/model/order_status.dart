//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_status.g.dart';

class OrderStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Unpaid')
  static const OrderStatus unpaid = _$unpaid;
  @BuiltValueEnumConst(wireName: r'Processing')
  static const OrderStatus processing = _$processing;
  @BuiltValueEnumConst(wireName: r'Shipped')
  static const OrderStatus shipped = _$shipped;
  @BuiltValueEnumConst(wireName: r'Delivered')
  static const OrderStatus delivered = _$delivered;
  @BuiltValueEnumConst(wireName: r'Cancelled')
  static const OrderStatus cancelled = _$cancelled;
  @BuiltValueEnumConst(wireName: r'PaymentFailed')
  static const OrderStatus paymentFailed = _$paymentFailed;

  static Serializer<OrderStatus> get serializer => _$orderStatusSerializer;

  const OrderStatus._(String name): super(name);

  static BuiltSet<OrderStatus> get values => _$values;
  static OrderStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrderStatusMixin = Object with _$OrderStatusMixin;

