// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenerateOtpCommand extends GenerateOtpCommand {
  @override
  final String? email;

  factory _$GenerateOtpCommand(
          [void Function(GenerateOtpCommandBuilder)? updates]) =>
      (GenerateOtpCommandBuilder()..update(updates))._build();

  _$GenerateOtpCommand._({this.email}) : super._();
  @override
  GenerateOtpCommand rebuild(
          void Function(GenerateOtpCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateOtpCommandBuilder toBuilder() =>
      GenerateOtpCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateOtpCommand && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GenerateOtpCommand')
          ..add('email', email))
        .toString();
  }
}

class GenerateOtpCommandBuilder
    implements Builder<GenerateOtpCommand, GenerateOtpCommandBuilder> {
  _$GenerateOtpCommand? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GenerateOtpCommandBuilder() {
    GenerateOtpCommand._defaults(this);
  }

  GenerateOtpCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateOtpCommand other) {
    _$v = other as _$GenerateOtpCommand;
  }

  @override
  void update(void Function(GenerateOtpCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateOtpCommand build() => _build();

  _$GenerateOtpCommand _build() {
    final _$result = _$v ??
        _$GenerateOtpCommand._(
          email: email,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
