// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_consultation_message_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendConsultationMessageCommand extends SendConsultationMessageCommand {
  @override
  final String? sessionId;
  @override
  final String? message;

  factory _$SendConsultationMessageCommand(
          [void Function(SendConsultationMessageCommandBuilder)? updates]) =>
      (SendConsultationMessageCommandBuilder()..update(updates))._build();

  _$SendConsultationMessageCommand._({this.sessionId, this.message})
      : super._();
  @override
  SendConsultationMessageCommand rebuild(
          void Function(SendConsultationMessageCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendConsultationMessageCommandBuilder toBuilder() =>
      SendConsultationMessageCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendConsultationMessageCommand &&
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
    return (newBuiltValueToStringHelper(r'SendConsultationMessageCommand')
          ..add('sessionId', sessionId)
          ..add('message', message))
        .toString();
  }
}

class SendConsultationMessageCommandBuilder
    implements
        Builder<SendConsultationMessageCommand,
            SendConsultationMessageCommandBuilder> {
  _$SendConsultationMessageCommand? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SendConsultationMessageCommandBuilder() {
    SendConsultationMessageCommand._defaults(this);
  }

  SendConsultationMessageCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendConsultationMessageCommand other) {
    _$v = other as _$SendConsultationMessageCommand;
  }

  @override
  void update(void Function(SendConsultationMessageCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendConsultationMessageCommand build() => _build();

  _$SendConsultationMessageCommand _build() {
    final _$result = _$v ??
        _$SendConsultationMessageCommand._(
          sessionId: sessionId,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
