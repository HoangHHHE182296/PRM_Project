// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResponse extends UserResponse {
  @override
  final String? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? gender;
  @override
  final Date? dateOfBirth;
  @override
  final String? phoneNumber;
  @override
  final String? avatarUrl;
  @override
  final BuiltList<String>? roles;

  factory _$UserResponse([void Function(UserResponseBuilder)? updates]) =>
      (UserResponseBuilder()..update(updates))._build();

  _$UserResponse._(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.gender,
      this.dateOfBirth,
      this.phoneNumber,
      this.avatarUrl,
      this.roles})
      : super._();
  @override
  UserResponse rebuild(void Function(UserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseBuilder toBuilder() => UserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponse &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        gender == other.gender &&
        dateOfBirth == other.dateOfBirth &&
        phoneNumber == other.phoneNumber &&
        avatarUrl == other.avatarUrl &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, avatarUrl.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('gender', gender)
          ..add('dateOfBirth', dateOfBirth)
          ..add('phoneNumber', phoneNumber)
          ..add('avatarUrl', avatarUrl)
          ..add('roles', roles))
        .toString();
  }
}

class UserResponseBuilder
    implements Builder<UserResponse, UserResponseBuilder> {
  _$UserResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  UserResponseBuilder() {
    UserResponse._defaults(this);
  }

  UserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _gender = $v.gender;
      _dateOfBirth = $v.dateOfBirth;
      _phoneNumber = $v.phoneNumber;
      _avatarUrl = $v.avatarUrl;
      _roles = $v.roles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponse other) {
    _$v = other as _$UserResponse;
  }

  @override
  void update(void Function(UserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponse build() => _build();

  _$UserResponse _build() {
    _$UserResponse _$result;
    try {
      _$result = _$v ??
          _$UserResponse._(
            id: id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            gender: gender,
            dateOfBirth: dateOfBirth,
            phoneNumber: phoneNumber,
            avatarUrl: avatarUrl,
            roles: _roles?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
