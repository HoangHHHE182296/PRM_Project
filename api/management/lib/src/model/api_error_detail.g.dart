// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiErrorDetail extends ApiErrorDetail {
  @override
  final String? code;
  @override
  final String? description;

  factory _$ApiErrorDetail([void Function(ApiErrorDetailBuilder)? updates]) =>
      (ApiErrorDetailBuilder()..update(updates))._build();

  _$ApiErrorDetail._({this.code, this.description}) : super._();
  @override
  ApiErrorDetail rebuild(void Function(ApiErrorDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiErrorDetailBuilder toBuilder() => ApiErrorDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiErrorDetail &&
        code == other.code &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiErrorDetail')
          ..add('code', code)
          ..add('description', description))
        .toString();
  }
}

class ApiErrorDetailBuilder
    implements Builder<ApiErrorDetail, ApiErrorDetailBuilder> {
  _$ApiErrorDetail? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ApiErrorDetailBuilder() {
    ApiErrorDetail._defaults(this);
  }

  ApiErrorDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiErrorDetail other) {
    _$v = other as _$ApiErrorDetail;
  }

  @override
  void update(void Function(ApiErrorDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiErrorDetail build() => _build();

  _$ApiErrorDetail _build() {
    final _$result = _$v ??
        _$ApiErrorDetail._(
          code: code,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
