// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_chat_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationChatRequest extends ConsultationChatRequest {
  @override
  final String? sessionId;
  @override
  final String? message;

  factory _$ConsultationChatRequest(
          [void Function(ConsultationChatRequestBuilder)? updates]) =>
      (ConsultationChatRequestBuilder()..update(updates))._build();

  _$ConsultationChatRequest._({this.sessionId, this.message}) : super._();
  @override
  ConsultationChatRequest rebuild(
          void Function(ConsultationChatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationChatRequestBuilder toBuilder() =>
      ConsultationChatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationChatRequest &&
        sessionId == other.sessionId &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationChatRequest')
          ..add('sessionId', sessionId)
          ..add('message', message))
        .toString();
  }
}

class ConsultationChatRequestBuilder
    implements
        Builder<ConsultationChatRequest, ConsultationChatRequestBuilder> {
  _$ConsultationChatRequest? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ConsultationChatRequestBuilder() {
    ConsultationChatRequest._defaults(this);
  }

  ConsultationChatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationChatRequest other) {
    _$v = other as _$ConsultationChatRequest;
  }

  @override
  void update(void Function(ConsultationChatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationChatRequest build() => _build();

  _$ConsultationChatRequest _build() {
    final _$result = _$v ??
        _$ConsultationChatRequest._(
          sessionId: sessionId,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
