//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_consultation_request.g.dart';

/// StartConsultationRequest
///
/// Properties:
/// * [recipientGender] 
/// * [recipientAge] 
/// * [occasion] 
/// * [interests] 
/// * [minimumBudget] 
/// * [maximumBudget] 
@BuiltValue()
abstract class StartConsultationRequest implements Built<StartConsultationRequest, StartConsultationRequestBuilder> {
  @BuiltValueField(wireName: r'recipientGender')
  String? get recipientGender;

  @BuiltValueField(wireName: r'recipientAge')
  String? get recipientAge;

  @BuiltValueField(wireName: r'occasion')
  String? get occasion;

  @BuiltValueField(wireName: r'interests')
  String? get interests;

  @BuiltValueField(wireName: r'minimumBudget')
  double? get minimumBudget;

  @BuiltValueField(wireName: r'maximumBudget')
  double? get maximumBudget;

  StartConsultationRequest._();

  factory StartConsultationRequest([void updates(StartConsultationRequestBuilder b)]) = _$StartConsultationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartConsultationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartConsultationRequest> get serializer => _$StartConsultationRequestSerializer();
}

class _$StartConsultationRequestSerializer implements PrimitiveSerializer<StartConsultationRequest> {
  @override
  final Iterable<Type> types = const [StartConsultationRequest, _$StartConsultationRequest];

  @override
  final String wireName = r'StartConsultationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartConsultationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.recipientGender != null) {
      yield r'recipientGender';
      yield serializers.serialize(
        object.recipientGender,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recipientAge != null) {
      yield r'recipientAge';
      yield serializers.serialize(
        object.recipientAge,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.occasion != null) {
      yield r'occasion';
      yield serializers.serialize(
        object.occasion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.interests != null) {
      yield r'interests';
      yield serializers.serialize(
        object.interests,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.minimumBudget != null) {
      yield r'minimumBudget';
      yield serializers.serialize(
        object.minimumBudget,
        specifiedType: const FullType(double),
      );
    }
    if (object.maximumBudget != null) {
      yield r'maximumBudget';
      yield serializers.serialize(
        object.maximumBudget,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StartConsultationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartConsultationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'recipientGender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recipientGender = valueDes;
          break;
        case r'recipientAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recipientAge = valueDes;
          break;
        case r'occasion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.occasion = valueDes;
          break;
        case r'interests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.interests = valueDes;
          break;
        case r'minimumBudget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.minimumBudget = valueDes;
          break;
        case r'maximumBudget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.maximumBudget = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartConsultationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartConsultationRequestBuilder();
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

