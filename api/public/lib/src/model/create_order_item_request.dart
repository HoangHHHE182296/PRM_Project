//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_order_item_request.g.dart';

/// CreateOrderItemRequest
///
/// Properties:
/// * [productId] 
/// * [productName] 
/// * [productImage] 
/// * [quantity] 
/// * [unitPrice] 
@BuiltValue()
abstract class CreateOrderItemRequest implements Built<CreateOrderItemRequest, CreateOrderItemRequestBuilder> {
  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'productName')
  String? get productName;

  @BuiltValueField(wireName: r'productImage')
  String? get productImage;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'unitPrice')
  double? get unitPrice;

  CreateOrderItemRequest._();

  factory CreateOrderItemRequest([void updates(CreateOrderItemRequestBuilder b)]) = _$CreateOrderItemRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateOrderItemRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateOrderItemRequest> get serializer => _$CreateOrderItemRequestSerializer();
}

class _$CreateOrderItemRequestSerializer implements PrimitiveSerializer<CreateOrderItemRequest> {
  @override
  final Iterable<Type> types = const [CreateOrderItemRequest, _$CreateOrderItemRequest];

  @override
  final String wireName = r'CreateOrderItemRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateOrderItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(String),
      );
    }
    if (object.productName != null) {
      yield r'productName';
      yield serializers.serialize(
        object.productName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.productImage != null) {
      yield r'productImage';
      yield serializers.serialize(
        object.productImage,
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
    if (object.unitPrice != null) {
      yield r'unitPrice';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateOrderItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateOrderItemRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.productName = valueDes;
          break;
        case r'productImage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.productImage = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'unitPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateOrderItemRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOrderItemRequestBuilder();
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

