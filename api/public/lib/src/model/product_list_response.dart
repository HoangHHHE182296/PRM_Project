//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_list_response.g.dart';

/// ProductListResponse
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [sku] 
/// * [price] 
/// * [description] 
/// * [type] 
/// * [imageUrl] 
/// * [categoryName] 
/// * [tags] 
/// * [rating] 
/// * [isInStock] 
@BuiltValue()
abstract class ProductListResponse implements Built<ProductListResponse, ProductListResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'sku')
  String? get sku;

  @BuiltValueField(wireName: r'price')
  double? get price;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'categoryName')
  String? get categoryName;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'rating')
  double? get rating;

  @BuiltValueField(wireName: r'isInStock')
  bool? get isInStock;

  ProductListResponse._();

  factory ProductListResponse([void updates(ProductListResponseBuilder b)]) = _$ProductListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductListResponse> get serializer => _$ProductListResponseSerializer();
}

class _$ProductListResponseSerializer implements PrimitiveSerializer<ProductListResponse> {
  @override
  final Iterable<Type> types = const [ProductListResponse, _$ProductListResponse];

  @override
  final String wireName = r'ProductListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sku != null) {
      yield r'sku';
      yield serializers.serialize(
        object.sku,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.categoryName != null) {
      yield r'categoryName';
      yield serializers.serialize(
        object.categoryName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType(double),
      );
    }
    if (object.isInStock != null) {
      yield r'isInStock';
      yield serializers.serialize(
        object.isInStock,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductListResponseBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'sku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sku = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'categoryName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.categoryName = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.rating = valueDes;
          break;
        case r'isInStock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isInStock = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductListResponseBuilder();
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

