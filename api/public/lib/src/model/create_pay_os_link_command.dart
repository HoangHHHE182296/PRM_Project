//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_pay_os_link_command.g.dart';

/// CreatePayOsLinkCommand
///
/// Properties:
/// * [orderId] 
@BuiltValue()
abstract class CreatePayOsLinkCommand implements Built<CreatePayOsLinkCommand, CreatePayOsLinkCommandBuilder> {
  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  CreatePayOsLinkCommand._();

  factory CreatePayOsLinkCommand([void updates(CreatePayOsLinkCommandBuilder b)]) = _$CreatePayOsLinkCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePayOsLinkCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePayOsLinkCommand> get serializer => _$CreatePayOsLinkCommandSerializer();
}

class _$CreatePayOsLinkCommandSerializer implements PrimitiveSerializer<CreatePayOsLinkCommand> {
  @override
  final Iterable<Type> types = const [CreatePayOsLinkCommand, _$CreatePayOsLinkCommand];

  @override
  final String wireName = r'CreatePayOsLinkCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePayOsLinkCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePayOsLinkCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePayOsLinkCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePayOsLinkCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePayOsLinkCommandBuilder();
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

