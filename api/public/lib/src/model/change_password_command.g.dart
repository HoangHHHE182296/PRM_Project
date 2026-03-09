// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePasswordCommand extends ChangePasswordCommand {
  @override
  final String? currentPassword;
  @override
  final String? newPassword;

  factory _$ChangePasswordCommand(
          [void Function(ChangePasswordCommandBuilder)? updates]) =>
      (ChangePasswordCommandBuilder()..update(updates))._build();

  _$ChangePasswordCommand._({this.currentPassword, this.newPassword})
      : super._();
  @override
  ChangePasswordCommand rebuild(
          void Function(ChangePasswordCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePasswordCommandBuilder toBuilder() =>
      ChangePasswordCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePasswordCommand &&
        currentPassword == other.currentPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPassword.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePasswordCommand')
          ..add('currentPassword', currentPassword)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class ChangePasswordCommandBuilder
    implements Builder<ChangePasswordCommand, ChangePasswordCommandBuilder> {
  _$ChangePasswordCommand? _$v;

  String? _currentPassword;
  String? get currentPassword => _$this._currentPassword;
  set currentPassword(String? currentPassword) =>
      _$this._currentPassword = currentPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  ChangePasswordCommandBuilder() {
    ChangePasswordCommand._defaults(this);
  }

  ChangePasswordCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPassword = $v.currentPassword;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePasswordCommand other) {
    _$v = other as _$ChangePasswordCommand;
  }

  @override
  void update(void Function(ChangePasswordCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePasswordCommand build() => _build();

  _$ChangePasswordCommand _build() {
    final _$result = _$v ??
        _$ChangePasswordCommand._(
          currentPassword: currentPassword,
          newPassword: newPassword,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
