//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_gift.g.dart';

/// ImageGift
///
/// Properties:
/// * [url] 
/// * [colorName] 
/// * [colorHex] 
@BuiltValue()
abstract class ImageGift implements Built<ImageGift, ImageGiftBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'colorName')
  String? get colorName;

  @BuiltValueField(wireName: r'colorHex')
  String? get colorHex;

  ImageGift._();

  factory ImageGift([void updates(ImageGiftBuilder b)]) = _$ImageGift;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageGiftBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageGift> get serializer => _$ImageGiftSerializer();
}

class _$ImageGiftSerializer implements PrimitiveSerializer<ImageGift> {
  @override
  final Iterable<Type> types = const [ImageGift, _$ImageGift];

  @override
  final String wireName = r'ImageGift';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageGift object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.colorName != null) {
      yield r'colorName';
      yield serializers.serialize(
        object.colorName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.colorHex != null) {
      yield r'colorHex';
      yield serializers.serialize(
        object.colorHex,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageGift object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImageGiftBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'colorName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.colorName = valueDes;
          break;
        case r'colorHex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.colorHex = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImageGift deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageGiftBuilder();
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

