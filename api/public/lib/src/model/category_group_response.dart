//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:public_openapi/src/model/category_summary_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_group_response.g.dart';

/// CategoryGroupResponse
///
/// Properties:
/// * [parentId] 
/// * [parentName] 
/// * [categories] 
@BuiltValue()
abstract class CategoryGroupResponse implements Built<CategoryGroupResponse, CategoryGroupResponseBuilder> {
  @BuiltValueField(wireName: r'parentId')
  String? get parentId;

  @BuiltValueField(wireName: r'parentName')
  String? get parentName;

  @BuiltValueField(wireName: r'categories')
  BuiltList<CategorySummaryResponse>? get categories;

  CategoryGroupResponse._();

  factory CategoryGroupResponse([void updates(CategoryGroupResponseBuilder b)]) = _$CategoryGroupResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryGroupResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryGroupResponse> get serializer => _$CategoryGroupResponseSerializer();
}

class _$CategoryGroupResponseSerializer implements PrimitiveSerializer<CategoryGroupResponse> {
  @override
  final Iterable<Type> types = const [CategoryGroupResponse, _$CategoryGroupResponse];

  @override
  final String wireName = r'CategoryGroupResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryGroupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType.nullable(BuiltList, [FullType(CategorySummaryResponse)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryGroupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryGroupResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(CategorySummaryResponse)]),
          ) as BuiltList<CategorySummaryResponse>?;
          if (valueDes == null) continue;
          result.categories.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryGroupResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryGroupResponseBuilder();
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

