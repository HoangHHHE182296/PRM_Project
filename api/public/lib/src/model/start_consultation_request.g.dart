// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_consultation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartConsultationRequest extends StartConsultationRequest {
  @override
  final String? recipientGender;
  @override
  final String? recipientAge;
  @override
  final String? occasion;
  @override
  final String? interests;
  @override
  final double? minimumBudget;
  @override
  final double? maximumBudget;

  factory _$StartConsultationRequest(
          [void Function(StartConsultationRequestBuilder)? updates]) =>
      (StartConsultationRequestBuilder()..update(updates))._build();

  _$StartConsultationRequest._(
      {this.recipientGender,
      this.recipientAge,
      this.occasion,
      this.interests,
      this.minimumBudget,
      this.maximumBudget})
      : super._();
  @override
  StartConsultationRequest rebuild(
          void Function(StartConsultationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartConsultationRequestBuilder toBuilder() =>
      StartConsultationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartConsultationRequest &&
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
    return (newBuiltValueToStringHelper(r'StartConsultationRequest')
          ..add('recipientGender', recipientGender)
          ..add('recipientAge', recipientAge)
          ..add('occasion', occasion)
          ..add('interests', interests)
          ..add('minimumBudget', minimumBudget)
          ..add('maximumBudget', maximumBudget))
        .toString();
  }
}

class StartConsultationRequestBuilder
    implements
        Builder<StartConsultationRequest, StartConsultationRequestBuilder> {
  _$StartConsultationRequest? _$v;

  String? _recipientGender;
  String? get recipientGender => _$this._recipientGender;
  set recipientGender(String? recipientGender) =>
      _$this._recipientGender = recipientGender;

  String? _recipientAge;
  String? get recipientAge => _$this._recipientAge;
  set recipientAge(String? recipientAge) => _$this._recipientAge = recipientAge;

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

  StartConsultationRequestBuilder() {
    StartConsultationRequest._defaults(this);
  }

  StartConsultationRequestBuilder get _$this {
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
  void replace(StartConsultationRequest other) {
    _$v = other as _$StartConsultationRequest;
  }

  @override
  void update(void Function(StartConsultationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartConsultationRequest build() => _build();

  _$StartConsultationRequest _build() {
    final _$result = _$v ??
        _$StartConsultationRequest._(
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
