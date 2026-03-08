// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_login_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoogleLoginCommand extends GoogleLoginCommand {
  @override
  final String? idToken;

  factory _$GoogleLoginCommand(
          [void Function(GoogleLoginCommandBuilder)? updates]) =>
      (GoogleLoginCommandBuilder()..update(updates))._build();

  _$GoogleLoginCommand._({this.idToken}) : super._();
  @override
  GoogleLoginCommand rebuild(
          void Function(GoogleLoginCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleLoginCommandBuilder toBuilder() =>
      GoogleLoginCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleLoginCommand && idToken == other.idToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoogleLoginCommand')
          ..add('idToken', idToken))
        .toString();
  }
}

class GoogleLoginCommandBuilder
    implements Builder<GoogleLoginCommand, GoogleLoginCommandBuilder> {
  _$GoogleLoginCommand? _$v;

  String? _idToken;
  String? get idToken => _$this._idToken;
  set idToken(String? idToken) => _$this._idToken = idToken;

  GoogleLoginCommandBuilder() {
    GoogleLoginCommand._defaults(this);
  }

  GoogleLoginCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idToken = $v.idToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleLoginCommand other) {
    _$v = other as _$GoogleLoginCommand;
  }

  @override
  void update(void Function(GoogleLoginCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoogleLoginCommand build() => _build();

  _$GoogleLoginCommand _build() {
    final _$result = _$v ??
        _$GoogleLoginCommand._(
          idToken: idToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
