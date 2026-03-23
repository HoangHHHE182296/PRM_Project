//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:public_openapi/src/model/gift_set_item_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gift_set_includes_response.g.dart';

/// GiftSetIncludesResponse
///
/// Properties:
/// * [baseBoxId] 
/// * [boxName] 
/// * [boxTheme] 
/// * [items] 
@BuiltValue()
abstract class GiftSetIncludesResponse implements Built<GiftSetIncludesResponse, GiftSetIncludesResponseBuilder> {
  @BuiltValueField(wireName: r'baseBoxId')
  String? get baseBoxId;

  @BuiltValueField(wireName: r'boxName')
  String? get boxName;

  @BuiltValueField(wireName: r'boxTheme')
  String? get boxTheme;

  @BuiltValueField(wireName: r'items')
  BuiltList<GiftSetItemResponse>? get items;

  GiftSetIncludesResponse._();

  factory GiftSetIncludesResponse([void updates(GiftSetIncludesResponseBuilder b)]) = _$GiftSetIncludesResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GiftSetIncludesResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GiftSetIncludesResponse> get serializer => _$GiftSetIncludesResponseSerializer();
}

class _$GiftSetIncludesResponseSerializer implements PrimitiveSerializer<GiftSetIncludesResponse> {
  @override
  final Iterable<Type> types = const [GiftSetIncludesResponse, _$GiftSetIncludesResponse];

  @override
  final String wireName = r'GiftSetIncludesResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GiftSetIncludesResponse object, {
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
        specifiedType: const FullType.nullable(BuiltList, [FullType(GiftSetItemResponse)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GiftSetIncludesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GiftSetIncludesResponseBuilder result,
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
            specifiedType: const FullType.nullable(BuiltList, [FullType(GiftSetItemResponse)]),
          ) as BuiltList<GiftSetItemResponse>?;
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
  GiftSetIncludesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GiftSetIncludesResponseBuilder();
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

