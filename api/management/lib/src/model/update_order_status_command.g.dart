// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateOrderStatusCommand extends UpdateOrderStatusCommand {
  @override
  final OrderStatus? status;

  factory _$UpdateOrderStatusCommand(
          [void Function(UpdateOrderStatusCommandBuilder)? updates]) =>
      (UpdateOrderStatusCommandBuilder()..update(updates))._build();

  _$UpdateOrderStatusCommand._({this.status}) : super._();
  @override
  UpdateOrderStatusCommand rebuild(
          void Function(UpdateOrderStatusCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateOrderStatusCommandBuilder toBuilder() =>
      UpdateOrderStatusCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateOrderStatusCommand && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateOrderStatusCommand')
          ..add('status', status))
        .toString();
  }
}

class UpdateOrderStatusCommandBuilder
    implements
        Builder<UpdateOrderStatusCommand, UpdateOrderStatusCommandBuilder> {
  _$UpdateOrderStatusCommand? _$v;

  OrderStatus? _status;
  OrderStatus? get status => _$this._status;
  set status(OrderStatus? status) => _$this._status = status;

  UpdateOrderStatusCommandBuilder() {
    UpdateOrderStatusCommand._defaults(this);
  }

  UpdateOrderStatusCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateOrderStatusCommand other) {
    _$v = other as _$UpdateOrderStatusCommand;
  }

  @override
  void update(void Function(UpdateOrderStatusCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateOrderStatusCommand build() => _build();

  _$UpdateOrderStatusCommand _build() {
    final _$result = _$v ??
        _$UpdateOrderStatusCommand._(
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
