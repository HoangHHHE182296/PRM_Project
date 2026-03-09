// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_password_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetPasswordCommand extends SetPasswordCommand {
  @override
  final String? newPassword;

  factory _$SetPasswordCommand(
          [void Function(SetPasswordCommandBuilder)? updates]) =>
      (SetPasswordCommandBuilder()..update(updates))._build();

  _$SetPasswordCommand._({this.newPassword}) : super._();
  @override
  SetPasswordCommand rebuild(
          void Function(SetPasswordCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetPasswordCommandBuilder toBuilder() =>
      SetPasswordCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetPasswordCommand && newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetPasswordCommand')
          ..add('newPassword', newPassword))
        .toString();
  }
}

class SetPasswordCommandBuilder
    implements Builder<SetPasswordCommand, SetPasswordCommandBuilder> {
  _$SetPasswordCommand? _$v;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  SetPasswordCommandBuilder() {
    SetPasswordCommand._defaults(this);
  }

  SetPasswordCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetPasswordCommand other) {
    _$v = other as _$SetPasswordCommand;
  }

  @override
  void update(void Function(SetPasswordCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetPasswordCommand build() => _build();

  _$SetPasswordCommand _build() {
    final _$result = _$v ??
        _$SetPasswordCommand._(
          newPassword: newPassword,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
