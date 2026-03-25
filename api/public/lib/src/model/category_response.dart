//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:public_openapi/src/model/category_summary_response.dart';
import 'package:public_openapi/src/model/product_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_response.g.dart';

/// CategoryResponse
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [supportedProductType] 
/// * [imageUrl] 
/// * [parentId] 
/// * [parentName] 
/// * [children] 
@BuiltValue()
abstract class CategoryResponse implements Built<CategoryResponse, CategoryResponseBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'supportedProductType')
  ProductType? get supportedProductType;
  // enum supportedProductTypeEnum {  Component,  BaseBox,  GiftSet,  };

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'parentId')
  String? get parentId;

  @BuiltValueField(wireName: r'parentName')
  String? get parentName;

  @BuiltValueField(wireName: r'children')
  BuiltList<CategorySummaryResponse>? get children;

  CategoryResponse._();

  factory CategoryResponse([void updates(CategoryResponseBuilder b)]) = _$CategoryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryResponse> get serializer => _$CategoryResponseSerializer();
}

class _$CategoryResponseSerializer implements PrimitiveSerializer<CategoryResponse> {
  @override
  final Iterable<Type> types = const [CategoryResponse, _$CategoryResponse];

  @override
  final String wireName = r'CategoryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.supportedProductType != null) {
      yield r'supportedProductType';
      yield serializers.serialize(
        object.supportedProductType,
        specifiedType: const FullType(ProductType),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.parentId != null) {
      yield r'parentId';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.parentName != null) {
      yield r'parentName';
      yield serializers.serialize(
        object.parentName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.children != null) {
      yield r'children';
      yield serializers.serialize(
        object.children,
        specifiedType: const FullType.nullable(BuiltList, [FullType(CategorySummaryResponse)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'supportedProductType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductType),
          ) as ProductType;
          result.supportedProductType = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'parentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentId = valueDes;
          break;
        case r'parentName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentName = valueDes;
          break;
        case r'children':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(CategorySummaryResponse)]),
          ) as BuiltList<CategorySummaryResponse>?;
          if (valueDes == null) continue;
          result.children.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryResponseBuilder();
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

