// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshTokenCommand extends RefreshTokenCommand {
  @override
  final String? refreshToken;

  factory _$RefreshTokenCommand(
          [void Function(RefreshTokenCommandBuilder)? updates]) =>
      (RefreshTokenCommandBuilder()..update(updates))._build();

  _$RefreshTokenCommand._({this.refreshToken}) : super._();
  @override
  RefreshTokenCommand rebuild(
          void Function(RefreshTokenCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshTokenCommandBuilder toBuilder() =>
      RefreshTokenCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenCommand && refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshTokenCommand')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class RefreshTokenCommandBuilder
    implements Builder<RefreshTokenCommand, RefreshTokenCommandBuilder> {
  _$RefreshTokenCommand? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RefreshTokenCommandBuilder() {
    RefreshTokenCommand._defaults(this);
  }

  RefreshTokenCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenCommand other) {
    _$v = other as _$RefreshTokenCommand;
  }

  @override
  void update(void Function(RefreshTokenCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshTokenCommand build() => _build();

  _$RefreshTokenCommand _build() {
    final _$result = _$v ??
        _$RefreshTokenCommand._(
          refreshToken: refreshToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
