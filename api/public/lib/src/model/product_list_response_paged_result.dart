//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:public_openapi/src/model/pagination_metadata.dart';
import 'package:public_openapi/src/model/product_list_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_list_response_paged_result.g.dart';

/// ProductListResponsePagedResult
///
/// Properties:
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class ProductListResponsePagedResult implements Built<ProductListResponsePagedResult, ProductListResponsePagedResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ProductListResponse>? get data;

  @BuiltValueField(wireName: r'metadata')
  PaginationMetadata? get metadata;

  ProductListResponsePagedResult._();

  factory ProductListResponsePagedResult([void updates(ProductListResponsePagedResultBuilder b)]) = _$ProductListResponsePagedResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductListResponsePagedResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductListResponsePagedResult> get serializer => _$ProductListResponsePagedResultSerializer();
}

class _$ProductListResponsePagedResultSerializer implements PrimitiveSerializer<ProductListResponsePagedResult> {
  @override
  final Iterable<Type> types = const [ProductListResponsePagedResult, _$ProductListResponsePagedResult];

  @override
  final String wireName = r'ProductListResponsePagedResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductListResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ProductListResponse)]),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(PaginationMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductListResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductListResponsePagedResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ProductListResponse)]),
          ) as BuiltList<ProductListResponse>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaginationMetadata),
          ) as PaginationMetadata;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductListResponsePagedResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductListResponsePagedResultBuilder();
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

