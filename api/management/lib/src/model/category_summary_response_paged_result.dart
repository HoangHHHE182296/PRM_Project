//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:management_openapi/src/model/category_summary_response.dart';
import 'package:management_openapi/src/model/pagination_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_summary_response_paged_result.g.dart';

/// CategorySummaryResponsePagedResult
///
/// Properties:
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class CategorySummaryResponsePagedResult implements Built<CategorySummaryResponsePagedResult, CategorySummaryResponsePagedResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<CategorySummaryResponse>? get data;

  @BuiltValueField(wireName: r'metadata')
  PaginationMetadata? get metadata;

  CategorySummaryResponsePagedResult._();

  factory CategorySummaryResponsePagedResult([void updates(CategorySummaryResponsePagedResultBuilder b)]) = _$CategorySummaryResponsePagedResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategorySummaryResponsePagedResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategorySummaryResponsePagedResult> get serializer => _$CategorySummaryResponsePagedResultSerializer();
}

class _$CategorySummaryResponsePagedResultSerializer implements PrimitiveSerializer<CategorySummaryResponsePagedResult> {
  @override
  final Iterable<Type> types = const [CategorySummaryResponsePagedResult, _$CategorySummaryResponsePagedResult];

  @override
  final String wireName = r'CategorySummaryResponsePagedResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategorySummaryResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltList, [FullType(CategorySummaryResponse)]),
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
    CategorySummaryResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategorySummaryResponsePagedResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(CategorySummaryResponse)]),
          ) as BuiltList<CategorySummaryResponse>?;
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
  CategorySummaryResponsePagedResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategorySummaryResponsePagedResultBuilder();
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

