//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:public_openapi/src/model/product_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_category_command.g.dart';

/// UpdateCategoryCommand
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [imageUrl] 
/// * [supportedProductType] 
/// * [parentCategoryId] 
@BuiltValue()
abstract class UpdateCategoryCommand implements Built<UpdateCategoryCommand, UpdateCategoryCommandBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'supportedProductType')
  ProductType? get supportedProductType;
  // enum supportedProductTypeEnum {  Component,  BaseBox,  GiftSet,  };

  @BuiltValueField(wireName: r'parentCategoryId')
  String? get parentCategoryId;

  UpdateCategoryCommand._();

  factory UpdateCategoryCommand([void updates(UpdateCategoryCommandBuilder b)]) = _$UpdateCategoryCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCategoryCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCategoryCommand> get serializer => _$UpdateCategoryCommandSerializer();
}

class _$UpdateCategoryCommandSerializer implements PrimitiveSerializer<UpdateCategoryCommand> {
  @override
  final Iterable<Type> types = const [UpdateCategoryCommand, _$UpdateCategoryCommand];

  @override
  final String wireName = r'UpdateCategoryCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCategoryCommand object, {
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.supportedProductType != null) {
      yield r'supportedProductType';
      yield serializers.serialize(
        object.supportedProductType,
        specifiedType: const FullType(ProductType),
      );
    }
    if (object.parentCategoryId != null) {
      yield r'parentCategoryId';
      yield serializers.serialize(
        object.parentCategoryId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCategoryCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCategoryCommandBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'supportedProductType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductType),
          ) as ProductType;
          result.supportedProductType = valueDes;
          break;
        case r'parentCategoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentCategoryId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateCategoryCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCategoryCommandBuilder();
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

