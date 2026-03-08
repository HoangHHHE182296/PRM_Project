// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterCommand extends RegisterCommand {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? phone;
  @override
  final Date? dateOfBirth;
  @override
  final String? gender;

  factory _$RegisterCommand([void Function(RegisterCommandBuilder)? updates]) =>
      (RegisterCommandBuilder()..update(updates))._build();

  _$RegisterCommand._(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.dateOfBirth,
      this.gender})
      : super._();
  @override
  RegisterCommand rebuild(void Function(RegisterCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterCommandBuilder toBuilder() => RegisterCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterCommand &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        password == other.password &&
        phone == other.phone &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterCommand')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('password', password)
          ..add('phone', phone)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender))
        .toString();
  }
}

class RegisterCommandBuilder
    implements Builder<RegisterCommand, RegisterCommandBuilder> {
  _$RegisterCommand? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  RegisterCommandBuilder() {
    RegisterCommand._defaults(this);
  }

  RegisterCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _password = $v.password;
      _phone = $v.phone;
      _dateOfBirth = $v.dateOfBirth;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterCommand other) {
    _$v = other as _$RegisterCommand;
  }

  @override
  void update(void Function(RegisterCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterCommand build() => _build();

  _$RegisterCommand _build() {
    final _$result = _$v ??
        _$RegisterCommand._(
          firstName: firstName,
          lastName: lastName,
          email: email,
          password: password,
          phone: phone,
          dateOfBirth: dateOfBirth,
          gender: gender,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
