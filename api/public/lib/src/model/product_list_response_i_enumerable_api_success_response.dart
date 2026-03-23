//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:public_openapi/src/model/product_list_response.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_list_response_i_enumerable_api_success_response.g.dart';

/// ProductListResponseIEnumerableApiSuccessResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class ProductListResponseIEnumerableApiSuccessResponse implements Built<ProductListResponseIEnumerableApiSuccessResponse, ProductListResponseIEnumerableApiSuccessResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  int? get statusCode;

  @BuiltValueField(wireName: r'data')
  BuiltList<ProductListResponse>? get data;

  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  ProductListResponseIEnumerableApiSuccessResponse._();

  factory ProductListResponseIEnumerableApiSuccessResponse([void updates(ProductListResponseIEnumerableApiSuccessResponseBuilder b)]) = _$ProductListResponseIEnumerableApiSuccessResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductListResponseIEnumerableApiSuccessResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductListResponseIEnumerableApiSuccessResponse> get serializer => _$ProductListResponseIEnumerableApiSuccessResponseSerializer();
}

class _$ProductListResponseIEnumerableApiSuccessResponseSerializer implements PrimitiveSerializer<ProductListResponseIEnumerableApiSuccessResponse> {
  @override
  final Iterable<Type> types = const [ProductListResponseIEnumerableApiSuccessResponse, _$ProductListResponseIEnumerableApiSuccessResponse];

  @override
  final String wireName = r'ProductListResponseIEnumerableApiSuccessResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductListResponseIEnumerableApiSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statusCode != null) {
      yield r'statusCode';
      yield serializers.serialize(
        object.statusCode,
        specifiedType: const FullType(int),
      );
    }
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
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductListResponseIEnumerableApiSuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductListResponseIEnumerableApiSuccessResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'statusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.statusCode = valueDes;
          break;
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
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductListResponseIEnumerableApiSuccessResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductListResponseIEnumerableApiSuccessResponseBuilder();
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

