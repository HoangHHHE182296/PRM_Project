// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pay_os_link_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePayOsLinkCommand extends CreatePayOsLinkCommand {
  @override
  final String? orderId;

  factory _$CreatePayOsLinkCommand(
          [void Function(CreatePayOsLinkCommandBuilder)? updates]) =>
      (CreatePayOsLinkCommandBuilder()..update(updates))._build();

  _$CreatePayOsLinkCommand._({this.orderId}) : super._();
  @override
  CreatePayOsLinkCommand rebuild(
          void Function(CreatePayOsLinkCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePayOsLinkCommandBuilder toBuilder() =>
      CreatePayOsLinkCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePayOsLinkCommand && orderId == other.orderId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePayOsLinkCommand')
          ..add('orderId', orderId))
        .toString();
  }
}

class CreatePayOsLinkCommandBuilder
    implements Builder<CreatePayOsLinkCommand, CreatePayOsLinkCommandBuilder> {
  _$CreatePayOsLinkCommand? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  CreatePayOsLinkCommandBuilder() {
    CreatePayOsLinkCommand._defaults(this);
  }

  CreatePayOsLinkCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePayOsLinkCommand other) {
    _$v = other as _$CreatePayOsLinkCommand;
  }

  @override
  void update(void Function(CreatePayOsLinkCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePayOsLinkCommand build() => _build();

  _$CreatePayOsLinkCommand _build() {
    final _$result = _$v ??
        _$CreatePayOsLinkCommand._(
          orderId: orderId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
