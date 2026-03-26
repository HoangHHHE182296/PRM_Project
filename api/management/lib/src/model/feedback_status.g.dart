// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FeedbackStatus _$processing = const FeedbackStatus._('processing');
const FeedbackStatus _$accepted = const FeedbackStatus._('accepted');
const FeedbackStatus _$reject = const FeedbackStatus._('reject');

FeedbackStatus _$valueOf(String name) {
  switch (name) {
    case 'processing':
      return _$processing;
    case 'accepted':
      return _$accepted;
    case 'reject':
      return _$reject;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FeedbackStatus> _$values =
    BuiltSet<FeedbackStatus>(const <FeedbackStatus>[
  _$processing,
  _$accepted,
  _$reject,
]);

class _$FeedbackStatusMeta {
  const _$FeedbackStatusMeta();
  FeedbackStatus get processing => _$processing;
  FeedbackStatus get accepted => _$accepted;
  FeedbackStatus get reject => _$reject;
  FeedbackStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<FeedbackStatus> get values => _$values;
}

abstract class _$FeedbackStatusMixin {
  // ignore: non_constant_identifier_names
  _$FeedbackStatusMeta get FeedbackStatus => const _$FeedbackStatusMeta();
}

Serializer<FeedbackStatus> _$feedbackStatusSerializer =
    _$FeedbackStatusSerializer();

class _$FeedbackStatusSerializer
    implements PrimitiveSerializer<FeedbackStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'processing': 'Processing',
    'accepted': 'Accepted',
    'reject': 'Reject',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Processing': 'processing',
    'Accepted': 'accepted',
    'Reject': 'reject',
  };

  @override
  final Iterable<Type> types = const <Type>[FeedbackStatus];
  @override
  final String wireName = 'FeedbackStatus';

  @override
  Object serialize(Serializers serializers, FeedbackStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FeedbackStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FeedbackStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
