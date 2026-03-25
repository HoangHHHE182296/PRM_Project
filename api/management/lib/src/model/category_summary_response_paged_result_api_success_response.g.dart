// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_summary_response_paged_result_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategorySummaryResponsePagedResultApiSuccessResponse
    extends CategorySummaryResponsePagedResultApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final CategorySummaryResponsePagedResult? data;

  factory _$CategorySummaryResponsePagedResultApiSuccessResponse(
          [void Function(
                  CategorySummaryResponsePagedResultApiSuccessResponseBuilder)?
              updates]) =>
      (CategorySummaryResponsePagedResultApiSuccessResponseBuilder()
            ..update(updates))
          ._build();

  _$CategorySummaryResponsePagedResultApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data})
      : super._();
  @override
  CategorySummaryResponsePagedResultApiSuccessResponse rebuild(
          void Function(
                  CategorySummaryResponsePagedResultApiSuccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategorySummaryResponsePagedResultApiSuccessResponseBuilder toBuilder() =>
      CategorySummaryResponsePagedResultApiSuccessResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategorySummaryResponsePagedResultApiSuccessResponse &&
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
            r'CategorySummaryResponsePagedResultApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data))
        .toString();
  }
}

class CategorySummaryResponsePagedResultApiSuccessResponseBuilder
    implements
        Builder<CategorySummaryResponsePagedResultApiSuccessResponse,
            CategorySummaryResponsePagedResultApiSuccessResponseBuilder> {
  _$CategorySummaryResponsePagedResultApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  CategorySummaryResponsePagedResultBuilder? _data;
  CategorySummaryResponsePagedResultBuilder get data =>
      _$this._data ??= CategorySummaryResponsePagedResultBuilder();
  set data(CategorySummaryResponsePagedResultBuilder? data) =>
      _$this._data = data;

  CategorySummaryResponsePagedResultApiSuccessResponseBuilder() {
    CategorySummaryResponsePagedResultApiSuccessResponse._defaults(this);
  }

  CategorySummaryResponsePagedResultApiSuccessResponseBuilder get _$this {
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
  void replace(CategorySummaryResponsePagedResultApiSuccessResponse other) {
    _$v = other as _$CategorySummaryResponsePagedResultApiSuccessResponse;
  }

  @override
  void update(
      void Function(
              CategorySummaryResponsePagedResultApiSuccessResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CategorySummaryResponsePagedResultApiSuccessResponse build() => _build();

  _$CategorySummaryResponsePagedResultApiSuccessResponse _build() {
    _$CategorySummaryResponsePagedResultApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$CategorySummaryResponsePagedResultApiSuccessResponse._(
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
            r'CategorySummaryResponsePagedResultApiSuccessResponse',
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
