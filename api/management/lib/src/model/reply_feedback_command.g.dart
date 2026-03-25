// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_feedback_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplyFeedbackCommand extends ReplyFeedbackCommand {
  @override
  final String? id;
  @override
  final String? responderName;
  @override
  final String? responderUrl;
  @override
  final String? content;

  factory _$ReplyFeedbackCommand(
          [void Function(ReplyFeedbackCommandBuilder)? updates]) =>
      (ReplyFeedbackCommandBuilder()..update(updates))._build();

  _$ReplyFeedbackCommand._(
      {this.id, this.responderName, this.responderUrl, this.content})
      : super._();
  @override
  ReplyFeedbackCommand rebuild(
          void Function(ReplyFeedbackCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplyFeedbackCommandBuilder toBuilder() =>
      ReplyFeedbackCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplyFeedbackCommand &&
        id == other.id &&
        responderName == other.responderName &&
        responderUrl == other.responderUrl &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, responderName.hashCode);
    _$hash = $jc(_$hash, responderUrl.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReplyFeedbackCommand')
          ..add('id', id)
          ..add('responderName', responderName)
          ..add('responderUrl', responderUrl)
          ..add('content', content))
        .toString();
  }
}

class ReplyFeedbackCommandBuilder
    implements Builder<ReplyFeedbackCommand, ReplyFeedbackCommandBuilder> {
  _$ReplyFeedbackCommand? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _responderName;
  String? get responderName => _$this._responderName;
  set responderName(String? responderName) =>
      _$this._responderName = responderName;

  String? _responderUrl;
  String? get responderUrl => _$this._responderUrl;
  set responderUrl(String? responderUrl) => _$this._responderUrl = responderUrl;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ReplyFeedbackCommandBuilder() {
    ReplyFeedbackCommand._defaults(this);
  }

  ReplyFeedbackCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _responderName = $v.responderName;
      _responderUrl = $v.responderUrl;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplyFeedbackCommand other) {
    _$v = other as _$ReplyFeedbackCommand;
  }

  @override
  void update(void Function(ReplyFeedbackCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplyFeedbackCommand build() => _build();

  _$ReplyFeedbackCommand _build() {
    final _$result = _$v ??
        _$ReplyFeedbackCommand._(
          id: id,
          responderName: responderName,
          responderUrl: responderUrl,
          content: content,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
