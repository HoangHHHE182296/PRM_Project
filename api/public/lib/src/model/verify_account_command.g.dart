// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_account_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyAccountCommand extends VerifyAccountCommand {
  @override
  final String? email;
  @override
  final String? otpCode;

  factory _$VerifyAccountCommand(
          [void Function(VerifyAccountCommandBuilder)? updates]) =>
      (VerifyAccountCommandBuilder()..update(updates))._build();

  _$VerifyAccountCommand._({this.email, this.otpCode}) : super._();
  @override
  VerifyAccountCommand rebuild(
          void Function(VerifyAccountCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyAccountCommandBuilder toBuilder() =>
      VerifyAccountCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyAccountCommand &&
        email == other.email &&
        otpCode == other.otpCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, otpCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyAccountCommand')
          ..add('email', email)
          ..add('otpCode', otpCode))
        .toString();
  }
}

class VerifyAccountCommandBuilder
    implements Builder<VerifyAccountCommand, VerifyAccountCommandBuilder> {
  _$VerifyAccountCommand? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _otpCode;
  String? get otpCode => _$this._otpCode;
  set otpCode(String? otpCode) => _$this._otpCode = otpCode;

  VerifyAccountCommandBuilder() {
    VerifyAccountCommand._defaults(this);
  }

  VerifyAccountCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _otpCode = $v.otpCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyAccountCommand other) {
    _$v = other as _$VerifyAccountCommand;
  }

  @override
  void update(void Function(VerifyAccountCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyAccountCommand build() => _build();

  _$VerifyAccountCommand _build() {
    final _$result = _$v ??
        _$VerifyAccountCommand._(
          email: email,
          otpCode: otpCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
