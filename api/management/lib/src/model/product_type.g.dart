// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductType _$component = const ProductType._('component');
const ProductType _$baseBox = const ProductType._('baseBox');
const ProductType _$giftSet = const ProductType._('giftSet');

ProductType _$valueOf(String name) {
  switch (name) {
    case 'component':
      return _$component;
    case 'baseBox':
      return _$baseBox;
    case 'giftSet':
      return _$giftSet;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProductType> _$values =
    BuiltSet<ProductType>(const <ProductType>[
  _$component,
  _$baseBox,
  _$giftSet,
]);

class _$ProductTypeMeta {
  const _$ProductTypeMeta();
  ProductType get component => _$component;
  ProductType get baseBox => _$baseBox;
  ProductType get giftSet => _$giftSet;
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
    'component': 'Component',
    'baseBox': 'BaseBox',
    'giftSet': 'GiftSet',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Component': 'component',
    'BaseBox': 'baseBox',
    'GiftSet': 'giftSet',
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
