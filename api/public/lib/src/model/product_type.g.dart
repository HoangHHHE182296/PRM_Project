// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductType _$number1 = const ProductType._('number1');
const ProductType _$number2 = const ProductType._('number2');
const ProductType _$number3 = const ProductType._('number3');

ProductType _$valueOf(String name) {
  switch (name) {
    case 'number1':
      return _$number1;
    case 'number2':
      return _$number2;
    case 'number3':
      return _$number3;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProductType> _$values =
    BuiltSet<ProductType>(const <ProductType>[
  _$number1,
  _$number2,
  _$number3,
]);

class _$ProductTypeMeta {
  const _$ProductTypeMeta();
  ProductType get number1 => _$number1;
  ProductType get number2 => _$number2;
  ProductType get number3 => _$number3;
  ProductType valueOf(String name) => _$valueOf(name);
  BuiltSet<ProductType> get values => _$values;
}

abstract class _$ProductTypeMixin {
  // ignore: non_constant_identifier_names
  _$ProductTypeMeta get ProductType => const _$ProductTypeMeta();
}

Serializer<ProductType> _$productTypeSerializer = _$ProductTypeSerializer();

class _$ProductTypeSerializer implements PrimitiveSerializer<ProductType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'number2': 2,
    'number3': 3,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    2: 'number2',
    3: 'number3',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductType];
  @override
  final String wireName = 'ProductType';

  @override
  Object serialize(Serializers serializers, ProductType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProductType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProductType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
