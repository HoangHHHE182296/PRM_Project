//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:public_openapi/src/model/gift_item.dart';
import 'package:public_openapi/src/model/gift_box.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommended_gift_set.g.dart';

/// RecommendedGiftSet
///
/// Properties:
/// * [giftSetName] 
/// * [description] 
/// * [totalEstimatedPrice] 
/// * [giftSetImageUrl] 
/// * [box] 
/// * [items] 
@BuiltValue()
abstract class RecommendedGiftSet implements Built<RecommendedGiftSet, RecommendedGiftSetBuilder> {
  @BuiltValueField(wireName: r'giftSetName')
  String? get giftSetName;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'totalEstimatedPrice')
  double? get totalEstimatedPrice;

  @BuiltValueField(wireName: r'giftSetImageUrl')
  String? get giftSetImageUrl;

  @BuiltValueField(wireName: r'box')
  GiftBox? get box;

  @BuiltValueField(wireName: r'items')
  BuiltList<GiftItem>? get items;

  RecommendedGiftSet._();

  factory RecommendedGiftSet([void updates(RecommendedGiftSetBuilder b)]) = _$RecommendedGiftSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendedGiftSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendedGiftSet> get serializer => _$RecommendedGiftSetSerializer();
}

class _$RecommendedGiftSetSerializer implements PrimitiveSerializer<RecommendedGiftSet> {
  @override
  final Iterable<Type> types = const [RecommendedGiftSet, _$RecommendedGiftSet];

  @override
  final String wireName = r'RecommendedGiftSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendedGiftSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.giftSetName != null) {
      yield r'giftSetName';
      yield serializers.serialize(
        object.giftSetName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalEstimatedPrice != null) {
      yield r'totalEstimatedPrice';
      yield serializers.serialize(
        object.totalEstimatedPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.giftSetImageUrl != null) {
      yield r'giftSetImageUrl';
      yield serializers.serialize(
        object.giftSetImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.box != null) {
      yield r'box';
      yield serializers.serialize(
        object.box,
        specifiedType: const FullType(GiftBox),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GiftItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendedGiftSet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecommendedGiftSetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'giftSetName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.giftSetName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'totalEstimatedPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalEstimatedPrice = valueDes;
          break;
        case r'giftSetImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.giftSetImageUrl = valueDes;
          break;
        case r'box':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GiftBox),
          ) as GiftBox;
          result.box.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GiftItem)]),
          ) as BuiltList<GiftItem>?;
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
  RecommendedGiftSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendedGiftSetBuilder();
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

