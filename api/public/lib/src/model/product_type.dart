//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_type.g.dart';

class ProductType extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 1)
  static const ProductType number1 = _$number1;
  @BuiltValueEnumConst(wireNumber: 2)
  static const ProductType number2 = _$number2;
  @BuiltValueEnumConst(wireNumber: 3)
  static const ProductType number3 = _$number3;

  static Serializer<ProductType> get serializer => _$productTypeSerializer;

  const ProductType._(String name): super(name);

  static BuiltSet<ProductType> get values => _$values;
  static ProductType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ProductTypeMixin = Object with _$ProductTypeMixin;

