//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/product_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_response_paginated_list.g.dart';

/// ProductResponsePaginatedList
///
/// Properties:
/// * [items] 
/// * [pageNumber] 
/// * [totalPages] 
/// * [totalCount] 
/// * [hasPreviousPage] 
/// * [hasNextPage] 
@BuiltValue()
abstract class ProductResponsePaginatedList implements Built<ProductResponsePaginatedList, ProductResponsePaginatedListBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ProductResponse>? get items;

  @BuiltValueField(wireName: r'pageNumber')
  int? get pageNumber;

  @BuiltValueField(wireName: r'totalPages')
  int? get totalPages;

  @BuiltValueField(wireName: r'totalCount')
  int? get totalCount;

  @BuiltValueField(wireName: r'hasPreviousPage')
  bool? get hasPreviousPage;

  @BuiltValueField(wireName: r'hasNextPage')
  bool? get hasNextPage;

  ProductResponsePaginatedList._();

  factory ProductResponsePaginatedList([void updates(ProductResponsePaginatedListBuilder b)]) = _$ProductResponsePaginatedList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductResponsePaginatedListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductResponsePaginatedList> get serializer => _$ProductResponsePaginatedListSerializer();
}

class _$ProductResponsePaginatedListSerializer implements PrimitiveSerializer<ProductResponsePaginatedList> {
  @override
  final Iterable<Type> types = const [ProductResponsePaginatedList, _$ProductResponsePaginatedList];

  @override
  final String wireName = r'ProductResponsePaginatedList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductResponsePaginatedList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ProductResponse)]),
      );
    }
    if (object.pageNumber != null) {
      yield r'pageNumber';
      yield serializers.serialize(
        object.pageNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPages != null) {
      yield r'totalPages';
      yield serializers.serialize(
        object.totalPages,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalCount != null) {
      yield r'totalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasPreviousPage != null) {
      yield r'hasPreviousPage';
      yield serializers.serialize(
        object.hasPreviousPage,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasNextPage != null) {
      yield r'hasNextPage';
      yield serializers.serialize(
        object.hasNextPage,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductResponsePaginatedList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductResponsePaginatedListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ProductResponse)]),
          ) as BuiltList<ProductResponse>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'pageNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageNumber = valueDes;
          break;
        case r'totalPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'totalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'hasPreviousPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPreviousPage = valueDes;
          break;
        case r'hasNextPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNextPage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductResponsePaginatedList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductResponsePaginatedListBuilder();
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

