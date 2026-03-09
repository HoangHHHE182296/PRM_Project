// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookType extends WebhookType {
  @override
  final String? code;
  @override
  final String? desc;
  @override
  final bool? success;
  @override
  final WebhookData? data;
  @override
  final String? signature;

  factory _$WebhookType([void Function(WebhookTypeBuilder)? updates]) =>
      (WebhookTypeBuilder()..update(updates))._build();

  _$WebhookType._(
      {this.code, this.desc, this.success, this.data, this.signature})
      : super._();
  @override
  WebhookType rebuild(void Function(WebhookTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookTypeBuilder toBuilder() => WebhookTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookType &&
        code == other.code &&
        desc == other.desc &&
        success == other.success &&
        data == other.data &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhookType')
          ..add('code', code)
          ..add('desc', desc)
          ..add('success', success)
          ..add('data', data)
          ..add('signature', signature))
        .toString();
  }
}

class WebhookTypeBuilder implements Builder<WebhookType, WebhookTypeBuilder> {
  _$WebhookType? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  WebhookDataBuilder? _data;
  WebhookDataBuilder get data => _$this._data ??= WebhookDataBuilder();
  set data(WebhookDataBuilder? data) => _$this._data = data;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  WebhookTypeBuilder() {
    WebhookType._defaults(this);
  }

  WebhookTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _desc = $v.desc;
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookType other) {
    _$v = other as _$WebhookType;
  }

  @override
  void update(void Function(WebhookTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookType build() => _build();

  _$WebhookType _build() {
    _$WebhookType _$result;
    try {
      _$result = _$v ??
          _$WebhookType._(
            code: code,
            desc: desc,
            success: success,
            data: _data?.build(),
            signature: signature,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WebhookType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
