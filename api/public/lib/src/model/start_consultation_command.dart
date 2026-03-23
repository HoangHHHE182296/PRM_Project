//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_consultation_command.g.dart';

/// StartConsultationCommand
///
/// Properties:
/// * [recipientGender] 
/// * [recipientAge] 
/// * [occasion] 
/// * [interests] 
/// * [minimumBudget] 
/// * [maximumBudget] 
@BuiltValue()
abstract class StartConsultationCommand implements Built<StartConsultationCommand, StartConsultationCommandBuilder> {
  @BuiltValueField(wireName: r'recipientGender')
  String? get recipientGender;

  @BuiltValueField(wireName: r'recipientAge')
  int? get recipientAge;

  @BuiltValueField(wireName: r'occasion')
  String? get occasion;

  @BuiltValueField(wireName: r'interests')
  String? get interests;

  @BuiltValueField(wireName: r'minimumBudget')
  double? get minimumBudget;

  @BuiltValueField(wireName: r'maximumBudget')
  double? get maximumBudget;

  StartConsultationCommand._();

  factory StartConsultationCommand([void updates(StartConsultationCommandBuilder b)]) = _$StartConsultationCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartConsultationCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartConsultationCommand> get serializer => _$StartConsultationCommandSerializer();
}

class _$StartConsultationCommandSerializer implements PrimitiveSerializer<StartConsultationCommand> {
  @override
  final Iterable<Type> types = const [StartConsultationCommand, _$StartConsultationCommand];

  @override
  final String wireName = r'StartConsultationCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartConsultationCommand object, {
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
        specifiedType: const FullType(int),
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
    StartConsultationCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartConsultationCommandBuilder result,
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
            specifiedType: const FullType(int),
          ) as int;
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
  StartConsultationCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartConsultationCommandBuilder();
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

