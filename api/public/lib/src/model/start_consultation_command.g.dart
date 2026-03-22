// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_consultation_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartConsultationCommand extends StartConsultationCommand {
  @override
  final String? recipientGender;
  @override
  final int? recipientAge;
  @override
  final String? occasion;
  @override
  final String? interests;
  @override
  final double? minimumBudget;
  @override
  final double? maximumBudget;

  factory _$StartConsultationCommand(
          [void Function(StartConsultationCommandBuilder)? updates]) =>
      (StartConsultationCommandBuilder()..update(updates))._build();

  _$StartConsultationCommand._(
      {this.recipientGender,
      this.recipientAge,
      this.occasion,
      this.interests,
      this.minimumBudget,
      this.maximumBudget})
      : super._();
  @override
  StartConsultationCommand rebuild(
          void Function(StartConsultationCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartConsultationCommandBuilder toBuilder() =>
      StartConsultationCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartConsultationCommand &&
        recipientGender == other.recipientGender &&
        recipientAge == other.recipientAge &&
        occasion == other.occasion &&
        interests == other.interests &&
        minimumBudget == other.minimumBudget &&
        maximumBudget == other.maximumBudget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recipientGender.hashCode);
    _$hash = $jc(_$hash, recipientAge.hashCode);
    _$hash = $jc(_$hash, occasion.hashCode);
    _$hash = $jc(_$hash, interests.hashCode);
    _$hash = $jc(_$hash, minimumBudget.hashCode);
    _$hash = $jc(_$hash, maximumBudget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartConsultationCommand')
          ..add('recipientGender', recipientGender)
          ..add('recipientAge', recipientAge)
          ..add('occasion', occasion)
          ..add('interests', interests)
          ..add('minimumBudget', minimumBudget)
          ..add('maximumBudget', maximumBudget))
        .toString();
  }
}

class StartConsultationCommandBuilder
    implements
        Builder<StartConsultationCommand, StartConsultationCommandBuilder> {
  _$StartConsultationCommand? _$v;

  String? _recipientGender;
  String? get recipientGender => _$this._recipientGender;
  set recipientGender(String? recipientGender) =>
      _$this._recipientGender = recipientGender;

  int? _recipientAge;
  int? get recipientAge => _$this._recipientAge;
  set recipientAge(int? recipientAge) => _$this._recipientAge = recipientAge;

  String? _occasion;
  String? get occasion => _$this._occasion;
  set occasion(String? occasion) => _$this._occasion = occasion;

  String? _interests;
  String? get interests => _$this._interests;
  set interests(String? interests) => _$this._interests = interests;

  double? _minimumBudget;
  double? get minimumBudget => _$this._minimumBudget;
  set minimumBudget(double? minimumBudget) =>
      _$this._minimumBudget = minimumBudget;

  double? _maximumBudget;
  double? get maximumBudget => _$this._maximumBudget;
  set maximumBudget(double? maximumBudget) =>
      _$this._maximumBudget = maximumBudget;

  StartConsultationCommandBuilder() {
    StartConsultationCommand._defaults(this);
  }

  StartConsultationCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recipientGender = $v.recipientGender;
      _recipientAge = $v.recipientAge;
      _occasion = $v.occasion;
      _interests = $v.interests;
      _minimumBudget = $v.minimumBudget;
      _maximumBudget = $v.maximumBudget;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartConsultationCommand other) {
    _$v = other as _$StartConsultationCommand;
  }

  @override
  void update(void Function(StartConsultationCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartConsultationCommand build() => _build();

  _$StartConsultationCommand _build() {
    final _$result = _$v ??
        _$StartConsultationCommand._(
          recipientGender: recipientGender,
          recipientAge: recipientAge,
          occasion: occasion,
          interests: interests,
          minimumBudget: minimumBudget,
          maximumBudget: maximumBudget,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
