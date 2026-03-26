//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pagination_metadata.g.dart';

/// PaginationMetadata
///
/// Properties:
/// * [currentPage] 
/// * [pageSize] 
/// * [totalCount] 
/// * [totalPages] 
/// * [hasNext] 
/// * [hasPrevious] 
@BuiltValue()
abstract class PaginationMetadata implements Built<PaginationMetadata, PaginationMetadataBuilder> {
  @BuiltValueField(wireName: r'currentPage')
  int? get currentPage;

  @BuiltValueField(wireName: r'pageSize')
  int? get pageSize;

  @BuiltValueField(wireName: r'totalCount')
  int? get totalCount;

  @BuiltValueField(wireName: r'totalPages')
  int? get totalPages;

  @BuiltValueField(wireName: r'hasNext')
  bool? get hasNext;

  @BuiltValueField(wireName: r'hasPrevious')
  bool? get hasPrevious;

  PaginationMetadata._();

  factory PaginationMetadata([void updates(PaginationMetadataBuilder b)]) = _$PaginationMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginationMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginationMetadata> get serializer => _$PaginationMetadataSerializer();
}

class _$PaginationMetadataSerializer implements PrimitiveSerializer<PaginationMetadata> {
  @override
  final Iterable<Type> types = const [PaginationMetadata, _$PaginationMetadata];

  @override
  final String wireName = r'PaginationMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginationMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentPage != null) {
      yield r'currentPage';
      yield serializers.serialize(
        object.currentPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.pageSize != null) {
      yield r'pageSize';
      yield serializers.serialize(
        object.pageSize,
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
    if (object.totalPages != null) {
      yield r'totalPages';
      yield serializers.serialize(
        object.totalPages,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasNext != null) {
      yield r'hasNext';
      yield serializers.serialize(
        object.hasNext,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasPrevious != null) {
      yield r'hasPrevious';
      yield serializers.serialize(
        object.hasPrevious,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginationMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginationMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currentPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentPage = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'totalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'totalPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'hasNext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNext = valueDes;
          break;
        case r'hasPrevious':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPrevious = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaginationMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginationMetadataBuilder();
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

