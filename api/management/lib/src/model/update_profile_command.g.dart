// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateProfileCommand extends UpdateProfileCommand {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final Date? dateOfBirth;
  @override
  final String? gender;

  factory _$UpdateProfileCommand(
          [void Function(UpdateProfileCommandBuilder)? updates]) =>
      (UpdateProfileCommandBuilder()..update(updates))._build();

  _$UpdateProfileCommand._(
      {this.firstName,
      this.lastName,
      this.phone,
      this.dateOfBirth,
      this.gender})
      : super._();
  @override
  UpdateProfileCommand rebuild(
          void Function(UpdateProfileCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateProfileCommandBuilder toBuilder() =>
      UpdateProfileCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProfileCommand &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phone == other.phone &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateProfileCommand')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phone', phone)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender))
        .toString();
  }
}

class UpdateProfileCommandBuilder
    implements Builder<UpdateProfileCommand, UpdateProfileCommandBuilder> {
  _$UpdateProfileCommand? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  UpdateProfileCommandBuilder() {
    UpdateProfileCommand._defaults(this);
  }

  UpdateProfileCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phone = $v.phone;
      _dateOfBirth = $v.dateOfBirth;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateProfileCommand other) {
    _$v = other as _$UpdateProfileCommand;
  }

  @override
  void update(void Function(UpdateProfileCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateProfileCommand build() => _build();

  _$UpdateProfileCommand _build() {
    final _$result = _$v ??
        _$UpdateProfileCommand._(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          dateOfBirth: dateOfBirth,
          gender: gender,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
