// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_response_paged_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedbackResponsePagedResult extends FeedbackResponsePagedResult {
  @override
  final BuiltList<FeedbackResponse>? data;
  @override
  final PaginationMetadata? metadata;

  factory _$FeedbackResponsePagedResult(
          [void Function(FeedbackResponsePagedResultBuilder)? updates]) =>
      (FeedbackResponsePagedResultBuilder()..update(updates))._build();

  _$FeedbackResponsePagedResult._({this.data, this.metadata}) : super._();
  @override
  FeedbackResponsePagedResult rebuild(
          void Function(FeedbackResponsePagedResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackResponsePagedResultBuilder toBuilder() =>
      FeedbackResponsePagedResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackResponsePagedResult &&
        data == other.data &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbackResponsePagedResult')
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class FeedbackResponsePagedResultBuilder
    implements
        Builder<FeedbackResponsePagedResult,
            FeedbackResponsePagedResultBuilder> {
  _$FeedbackResponsePagedResult? _$v;

  ListBuilder<FeedbackResponse>? _data;
  ListBuilder<FeedbackResponse> get data =>
      _$this._data ??= ListBuilder<FeedbackResponse>();
  set data(ListBuilder<FeedbackResponse>? data) => _$this._data = data;

  PaginationMetadataBuilder? _metadata;
  PaginationMetadataBuilder get metadata =>
      _$this._metadata ??= PaginationMetadataBuilder();
  set metadata(PaginationMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  FeedbackResponsePagedResultBuilder() {
    FeedbackResponsePagedResult._defaults(this);
  }

  FeedbackResponsePagedResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackResponsePagedResult other) {
    _$v = other as _$FeedbackResponsePagedResult;
  }

  @override
  void update(void Function(FeedbackResponsePagedResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbackResponsePagedResult build() => _build();

  _$FeedbackResponsePagedResult _build() {
    _$FeedbackResponsePagedResult _$result;
    try {
      _$result = _$v ??
          _$FeedbackResponsePagedResult._(
            data: _data?.build(),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FeedbackResponsePagedResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
