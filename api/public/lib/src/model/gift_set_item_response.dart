//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gift_set_item_response.g.dart';

/// GiftSetItemResponse
///
/// Properties:
/// * [componentId] 
/// * [componentName] 
/// * [material] 
/// * [thumbnailUrl] 
/// * [quantity] 
@BuiltValue()
abstract class GiftSetItemResponse implements Built<GiftSetItemResponse, GiftSetItemResponseBuilder> {
  @BuiltValueField(wireName: r'componentId')
  String? get componentId;

  @BuiltValueField(wireName: r'componentName')
  String? get componentName;

  @BuiltValueField(wireName: r'material')
  String? get material;

  @BuiltValueField(wireName: r'thumbnailUrl')
  String? get thumbnailUrl;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  GiftSetItemResponse._();

  factory GiftSetItemResponse([void updates(GiftSetItemResponseBuilder b)]) = _$GiftSetItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GiftSetItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GiftSetItemResponse> get serializer => _$GiftSetItemResponseSerializer();
}

class _$GiftSetItemResponseSerializer implements PrimitiveSerializer<GiftSetItemResponse> {
  @override
  final Iterable<Type> types = const [GiftSetItemResponse, _$GiftSetItemResponse];

  @override
  final String wireName = r'GiftSetItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GiftSetItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.componentId != null) {
      yield r'componentId';
      yield serializers.serialize(
        object.componentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.componentName != null) {
      yield r'componentName';
      yield serializers.serialize(
        object.componentName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.material != null) {
      yield r'material';
      yield serializers.serialize(
        object.material,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.thumbnailUrl != null) {
      yield r'thumbnailUrl';
      yield serializers.serialize(
        object.thumbnailUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GiftSetItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GiftSetItemResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'componentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.componentId = valueDes;
          break;
        case r'componentName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.componentName = valueDes;
          break;
        case r'material':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.material = valueDes;
          break;
        case r'thumbnailUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.thumbnailUrl = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GiftSetItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GiftSetItemResponseBuilder();
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

