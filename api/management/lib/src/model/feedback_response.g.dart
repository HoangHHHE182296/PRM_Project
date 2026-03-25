// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedbackResponse extends FeedbackResponse {
  @override
  final String? id;
  @override
  final String? productId;
  @override
  final String? orderId;
  @override
  final String? userId;
  @override
  final String? userFullName;
  @override
  final String? userAvatarUrl;
  @override
  final int? rating;
  @override
  final String? comment;
  @override
  final String? reply;
  @override
  final DateTime? createdAt;

  factory _$FeedbackResponse(
          [void Function(FeedbackResponseBuilder)? updates]) =>
      (FeedbackResponseBuilder()..update(updates))._build();

  _$FeedbackResponse._(
      {this.id,
      this.productId,
      this.orderId,
      this.userId,
      this.userFullName,
      this.userAvatarUrl,
      this.rating,
      this.comment,
      this.reply,
      this.createdAt})
      : super._();
  @override
  FeedbackResponse rebuild(void Function(FeedbackResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackResponseBuilder toBuilder() =>
      FeedbackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackResponse &&
        id == other.id &&
        productId == other.productId &&
        orderId == other.orderId &&
        userId == other.userId &&
        userFullName == other.userFullName &&
        userAvatarUrl == other.userAvatarUrl &&
        rating == other.rating &&
        comment == other.comment &&
        reply == other.reply &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userFullName.hashCode);
    _$hash = $jc(_$hash, userAvatarUrl.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, reply.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbackResponse')
          ..add('id', id)
          ..add('productId', productId)
          ..add('orderId', orderId)
          ..add('userId', userId)
          ..add('userFullName', userFullName)
          ..add('userAvatarUrl', userAvatarUrl)
          ..add('rating', rating)
          ..add('comment', comment)
          ..add('reply', reply)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class FeedbackResponseBuilder
    implements Builder<FeedbackResponse, FeedbackResponseBuilder> {
  _$FeedbackResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userFullName;
  String? get userFullName => _$this._userFullName;
  set userFullName(String? userFullName) => _$this._userFullName = userFullName;

  String? _userAvatarUrl;
  String? get userAvatarUrl => _$this._userAvatarUrl;
  set userAvatarUrl(String? userAvatarUrl) =>
      _$this._userAvatarUrl = userAvatarUrl;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _reply;
  String? get reply => _$this._reply;
  set reply(String? reply) => _$this._reply = reply;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  FeedbackResponseBuilder() {
    FeedbackResponse._defaults(this);
  }

  FeedbackResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _productId = $v.productId;
      _orderId = $v.orderId;
      _userId = $v.userId;
      _userFullName = $v.userFullName;
      _userAvatarUrl = $v.userAvatarUrl;
      _rating = $v.rating;
      _comment = $v.comment;
      _reply = $v.reply;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackResponse other) {
    _$v = other as _$FeedbackResponse;
  }

  @override
  void update(void Function(FeedbackResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbackResponse build() => _build();

  _$FeedbackResponse _build() {
    final _$result = _$v ??
        _$FeedbackResponse._(
          id: id,
          productId: productId,
          orderId: orderId,
          userId: userId,
          userFullName: userFullName,
          userAvatarUrl: userAvatarUrl,
          rating: rating,
          comment: comment,
          reply: reply,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
