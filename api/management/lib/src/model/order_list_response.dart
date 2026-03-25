//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:management_openapi/src/model/payment_method.dart';
import 'package:management_openapi/src/model/order_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_list_response.g.dart';

/// OrderListResponse
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [receiverName] 
/// * [receiverPhone] 
/// * [totalAmount] 
/// * [shippingAddress] 
/// * [status] 
/// * [paymentMethod] 
/// * [createdAt] 
@BuiltValue()
abstract class OrderListResponse implements Built<OrderListResponse, OrderListResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'receiverName')
  String? get receiverName;

  @BuiltValueField(wireName: r'receiverPhone')
  String? get receiverPhone;

  @BuiltValueField(wireName: r'totalAmount')
  double? get totalAmount;

  @BuiltValueField(wireName: r'shippingAddress')
  String? get shippingAddress;

  @BuiltValueField(wireName: r'status')
  OrderStatus? get status;
  // enum statusEnum {  PendingPayment,  Paid,  Processing,  Shipped,  Delivered,  Cancelled,  Refunded,  Failed,  };

  @BuiltValueField(wireName: r'paymentMethod')
  PaymentMethod? get paymentMethod;
  // enum paymentMethodEnum {  COD,  Momo,  VNPay,  BankTransfer,  CreditCard,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  OrderListResponse._();

  factory OrderListResponse([void updates(OrderListResponseBuilder b)]) = _$OrderListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderListResponse> get serializer => _$OrderListResponseSerializer();
}

class _$OrderListResponseSerializer implements PrimitiveSerializer<OrderListResponse> {
  @override
  final Iterable<Type> types = const [OrderListResponse, _$OrderListResponse];

  @override
  final String wireName = r'OrderListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.receiverName != null) {
      yield r'receiverName';
      yield serializers.serialize(
        object.receiverName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.receiverPhone != null) {
      yield r'receiverPhone';
      yield serializers.serialize(
        object.receiverPhone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalAmount != null) {
      yield r'totalAmount';
      yield serializers.serialize(
        object.totalAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.shippingAddress != null) {
      yield r'shippingAddress';
      yield serializers.serialize(
        object.shippingAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(OrderStatus),
      );
    }
    if (object.paymentMethod != null) {
      yield r'paymentMethod';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType(PaymentMethod),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'receiverName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.receiverName = valueDes;
          break;
        case r'receiverPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.receiverPhone = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalAmount = valueDes;
          break;
        case r'shippingAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shippingAddress = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderStatus),
          ) as OrderStatus;
          result.status = valueDes;
          break;
        case r'paymentMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentMethod),
          ) as PaymentMethod;
          result.paymentMethod = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderListResponseBuilder();
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

