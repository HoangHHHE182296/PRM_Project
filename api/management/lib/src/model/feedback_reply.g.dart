// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_reply.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedbackReply extends FeedbackReply {
  @override
  final String? responderName;
  @override
  final String? responderUrl;
  @override
  final String? content;
  @override
  final DateTime? replyTime;

  factory _$FeedbackReply([void Function(FeedbackReplyBuilder)? updates]) =>
      (FeedbackReplyBuilder()..update(updates))._build();

  _$FeedbackReply._(
      {this.responderName, this.responderUrl, this.content, this.replyTime})
      : super._();
  @override
  FeedbackReply rebuild(void Function(FeedbackReplyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackReplyBuilder toBuilder() => FeedbackReplyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackReply &&
        responderName == other.responderName &&
        responderUrl == other.responderUrl &&
        content == other.content &&
        replyTime == other.replyTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responderName.hashCode);
    _$hash = $jc(_$hash, responderUrl.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, replyTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbackReply')
          ..add('responderName', responderName)
          ..add('responderUrl', responderUrl)
          ..add('content', content)
          ..add('replyTime', replyTime))
        .toString();
  }
}

class FeedbackReplyBuilder
    implements Builder<FeedbackReply, FeedbackReplyBuilder> {
  _$FeedbackReply? _$v;

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

  DateTime? _replyTime;
  DateTime? get replyTime => _$this._replyTime;
  set replyTime(DateTime? replyTime) => _$this._replyTime = replyTime;

  FeedbackReplyBuilder() {
    FeedbackReply._defaults(this);
  }

  FeedbackReplyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responderName = $v.responderName;
      _responderUrl = $v.responderUrl;
      _content = $v.content;
      _replyTime = $v.replyTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackReply other) {
    _$v = other as _$FeedbackReply;
  }

  @override
  void update(void Function(FeedbackReplyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbackReply build() => _build();

  _$FeedbackReply _build() {
    final _$result = _$v ??
        _$FeedbackReply._(
          responderName: responderName,
          responderUrl: responderUrl,
          content: content,
          replyTime: replyTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
