// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_response_paged_result_api_success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderListResponsePagedResultApiSuccessResponse
    extends OrderListResponsePagedResultApiSuccessResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final OrderListResponsePagedResult? data;
  @override
  final JsonObject? metadata;

  factory _$OrderListResponsePagedResultApiSuccessResponse(
          [void Function(OrderListResponsePagedResultApiSuccessResponseBuilder)?
              updates]) =>
      (OrderListResponsePagedResultApiSuccessResponseBuilder()..update(updates))
          ._build();

  _$OrderListResponsePagedResultApiSuccessResponse._(
      {this.success, this.message, this.statusCode, this.data, this.metadata})
      : super._();
  @override
  OrderListResponsePagedResultApiSuccessResponse rebuild(
          void Function(OrderListResponsePagedResultApiSuccessResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderListResponsePagedResultApiSuccessResponseBuilder toBuilder() =>
      OrderListResponsePagedResultApiSuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderListResponsePagedResultApiSuccessResponse &&
        success == other.success &&
        message == other.message &&
        statusCode == other.statusCode &&
        data == other.data &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OrderListResponsePagedResultApiSuccessResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode)
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class OrderListResponsePagedResultApiSuccessResponseBuilder
    implements
        Builder<OrderListResponsePagedResultApiSuccessResponse,
            OrderListResponsePagedResultApiSuccessResponseBuilder> {
  _$OrderListResponsePagedResultApiSuccessResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  OrderListResponsePagedResultBuilder? _data;
  OrderListResponsePagedResultBuilder get data =>
      _$this._data ??= OrderListResponsePagedResultBuilder();
  set data(OrderListResponsePagedResultBuilder? data) => _$this._data = data;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  OrderListResponsePagedResultApiSuccessResponseBuilder() {
    OrderListResponsePagedResultApiSuccessResponse._defaults(this);
  }

  OrderListResponsePagedResultApiSuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _data = $v.data?.toBuilder();
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderListResponsePagedResultApiSuccessResponse other) {
    _$v = other as _$OrderListResponsePagedResultApiSuccessResponse;
  }

  @override
  void update(
      void Function(OrderListResponsePagedResultApiSuccessResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderListResponsePagedResultApiSuccessResponse build() => _build();

  _$OrderListResponsePagedResultApiSuccessResponse _build() {
    _$OrderListResponsePagedResultApiSuccessResponse _$result;
    try {
      _$result = _$v ??
          _$OrderListResponsePagedResultApiSuccessResponse._(
            success: success,
            message: message,
            statusCode: statusCode,
            data: _data?.build(),
            metadata: metadata,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderListResponsePagedResultApiSuccessResponse',
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
