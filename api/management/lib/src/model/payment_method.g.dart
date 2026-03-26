// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentMethod _$COD = const PaymentMethod._('COD');
const PaymentMethod _$momo = const PaymentMethod._('momo');
const PaymentMethod _$vNPay = const PaymentMethod._('vNPay');
const PaymentMethod _$bankTransfer = const PaymentMethod._('bankTransfer');
const PaymentMethod _$creditCard = const PaymentMethod._('creditCard');

PaymentMethod _$valueOf(String name) {
  switch (name) {
    case 'COD':
      return _$COD;
    case 'momo':
      return _$momo;
    case 'vNPay':
      return _$vNPay;
    case 'bankTransfer':
      return _$bankTransfer;
    case 'creditCard':
      return _$creditCard;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaymentMethod> _$values =
    BuiltSet<PaymentMethod>(const <PaymentMethod>[
  _$COD,
  _$momo,
  _$vNPay,
  _$bankTransfer,
  _$creditCard,
]);

class _$PaymentMethodMeta {
  const _$PaymentMethodMeta();
  PaymentMethod get COD => _$COD;
  PaymentMethod get momo => _$momo;
  PaymentMethod get vNPay => _$vNPay;
  PaymentMethod get bankTransfer => _$bankTransfer;
  PaymentMethod get creditCard => _$creditCard;
  PaymentMethod valueOf(String name) => _$valueOf(name);
  BuiltSet<PaymentMethod> get values => _$values;
}

abstract class _$PaymentMethodMixin {
  // ignore: non_constant_identifier_names
  _$PaymentMethodMeta get PaymentMethod => const _$PaymentMethodMeta();
}

Serializer<PaymentMethod> _$paymentMethodSerializer =
    _$PaymentMethodSerializer();

class _$PaymentMethodSerializer implements PrimitiveSerializer<PaymentMethod> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COD': 'COD',
    'momo': 'Momo',
    'vNPay': 'VNPay',
    'bankTransfer': 'BankTransfer',
    'creditCard': 'CreditCard',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COD': 'COD',
    'Momo': 'momo',
    'VNPay': 'vNPay',
    'BankTransfer': 'bankTransfer',
    'CreditCard': 'creditCard',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentMethod];
  @override
  final String wireName = 'PaymentMethod';

  @override
  Object serialize(Serializers serializers, PaymentMethod object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaymentMethod deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentMethod.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
