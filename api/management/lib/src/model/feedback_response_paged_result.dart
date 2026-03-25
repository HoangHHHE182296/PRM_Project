//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:management_openapi/src/model/feedback_response.dart';
import 'package:management_openapi/src/model/pagination_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback_response_paged_result.g.dart';

/// FeedbackResponsePagedResult
///
/// Properties:
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class FeedbackResponsePagedResult implements Built<FeedbackResponsePagedResult, FeedbackResponsePagedResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<FeedbackResponse>? get data;

  @BuiltValueField(wireName: r'metadata')
  PaginationMetadata? get metadata;

  FeedbackResponsePagedResult._();

  factory FeedbackResponsePagedResult([void updates(FeedbackResponsePagedResultBuilder b)]) = _$FeedbackResponsePagedResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeedbackResponsePagedResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeedbackResponsePagedResult> get serializer => _$FeedbackResponsePagedResultSerializer();
}

class _$FeedbackResponsePagedResultSerializer implements PrimitiveSerializer<FeedbackResponsePagedResult> {
  @override
  final Iterable<Type> types = const [FeedbackResponsePagedResult, _$FeedbackResponsePagedResult];

  @override
  final String wireName = r'FeedbackResponsePagedResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeedbackResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltList, [FullType(FeedbackResponse)]),
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
    FeedbackResponsePagedResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FeedbackResponsePagedResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(FeedbackResponse)]),
          ) as BuiltList<FeedbackResponse>?;
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
  FeedbackResponsePagedResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeedbackResponsePagedResultBuilder();
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

