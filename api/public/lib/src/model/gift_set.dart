//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:public_openapi/src/model/gift_set_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gift_set.g.dart';

/// GiftSet
///
/// Properties:
/// * [baseBoxId] 
/// * [boxName] 
/// * [boxTheme] 
/// * [items] 
@BuiltValue()
abstract class GiftSet implements Built<GiftSet, GiftSetBuilder> {
  @BuiltValueField(wireName: r'baseBoxId')
  String? get baseBoxId;

  @BuiltValueField(wireName: r'boxName')
  String? get boxName;

  @BuiltValueField(wireName: r'boxTheme')
  String? get boxTheme;

  @BuiltValueField(wireName: r'items')
  BuiltList<GiftSetItem>? get items;

  GiftSet._();

  factory GiftSet([void updates(GiftSetBuilder b)]) = _$GiftSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GiftSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GiftSet> get serializer => _$GiftSetSerializer();
}

class _$GiftSetSerializer implements PrimitiveSerializer<GiftSet> {
  @override
  final Iterable<Type> types = const [GiftSet, _$GiftSet];

  @override
  final String wireName = r'GiftSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GiftSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.baseBoxId != null) {
      yield r'baseBoxId';
      yield serializers.serialize(
        object.baseBoxId,
        specifiedType: const FullType(String),
      );
    }
    if (object.boxName != null) {
      yield r'boxName';
      yield serializers.serialize(
        object.boxName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.boxTheme != null) {
      yield r'boxTheme';
      yield serializers.serialize(
        object.boxTheme,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GiftSetItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GiftSet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GiftSetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'baseBoxId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseBoxId = valueDes;
          break;
        case r'boxName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.boxName = valueDes;
          break;
        case r'boxTheme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.boxTheme = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GiftSetItem)]),
          ) as BuiltList<GiftSetItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GiftSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GiftSetBuilder();
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

