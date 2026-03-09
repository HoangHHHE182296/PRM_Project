// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_recommendation_response_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AiRecommendationResponseApiSuccessResponse
    extends AiRecommendationResponseApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final AiRecommendationResponse? data;

  factory _$AiRecommendationResponseApiSuccessResponse(
          [void Function(AiRecommendationResponseApiSuccessResponseBuilder)?
              updates]) =>
      (AiRecommendationResponseApiSuccessResponseBuilder()..update(updates))
          ._build();

  _$AiRecommendationResponseApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  AiRecommendationResponseApiSuccessResponse rebuild(
          void Function(AiRecommendationResponseApiSuccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AiRecommendationResponseApiSuccessResponseBuilder toBuilder() =>
      AiRecommendationResponseApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AiRecommendationResponseApiSuccessResponse &&
        success == other.success &&
        message == other.message &&
        statusCode == other.statusCode &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AiRecommendationResponseApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class AiRecommendationResponseApiSuccessResponseBuilder
    implements
        Builder<AiRecommendationResponseApiSuccessResponse,
            AiRecommendationResponseApiSuccessResponseBuilder> {
  _$AiRecommendationResponseApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  AiRecommendationResponseBuilder? _data;
  AiRecommendationResponseBuilder get data =>
      _$this._data ??= AiRecommendationResponseBuilder();
  set data(AiRecommendationResponseBuilder? data) => _$this._data = data;

  AiRecommendationResponseApiSuccessResponseBuilder() {
    AiRecommendationResponseApiSuccessResponse._defaults(this);
  }

  AiRecommendationResponseApiSuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AiRecommendationResponseApiSuccessResponse other) {
    _$v = other as _$AiRecommendationResponseApiSuccessResponse;
  }

  @override
  void update(
      void Function(AiRecommendationResponseApiSuccessResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AiRecommendationResponseApiSuccessResponse build() => _build();

  _$AiRecommendationResponseApiSuccessResponse _build() {
    _$AiRecommendationResponseApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$AiRecommendationResponseApiSuccessResponse._(
            success: success,
            message: message,
            statusCode: statusCode,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AiRecommendationResponseApiSuccessResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
