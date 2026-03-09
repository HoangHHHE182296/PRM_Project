// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOrderRequest extends CreateOrderRequest {
  @override
  final String? userId;
  @override
  final String? receiverName;
  @override
  final String? receiverPhone;
  @override
  final String? shippingAddress;
  @override
  final String? note;
  @override
  final BuiltList<CreateOrderItemRequest>? items;

  factory _$CreateOrderRequest(
          [void Function(CreateOrderRequestBuilder)? updates]) =>
      (CreateOrderRequestBuilder()..update(updates))._build();

  _$CreateOrderRequest._(
      {this.userId,
      this.receiverName,
      this.receiverPhone,
      this.shippingAddress,
      this.note,
      this.items})
      : super._();
  @override
  CreateOrderRequest rebuild(
          void Function(CreateOrderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOrderRequestBuilder toBuilder() =>
      CreateOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOrderRequest &&
        userId == other.userId &&
        receiverName == other.receiverName &&
        receiverPhone == other.receiverPhone &&
        shippingAddress == other.shippingAddress &&
        note == other.note &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, receiverName.hashCode);
    _$hash = $jc(_$hash, receiverPhone.hashCode);
    _$hash = $jc(_$hash, shippingAddress.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOrderRequest')
          ..add('userId', userId)
          ..add('receiverName', receiverName)
          ..add('receiverPhone', receiverPhone)
          ..add('shippingAddress', shippingAddress)
          ..add('note', note)
          ..add('items', items))
        .toString();
  }
}

class CreateOrderRequestBuilder
    implements Builder<CreateOrderRequest, CreateOrderRequestBuilder> {
  _$CreateOrderRequest? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _receiverName;
  String? get receiverName => _$this._receiverName;
  set receiverName(String? receiverName) => _$this._receiverName = receiverName;

  String? _receiverPhone;
  String? get receiverPhone => _$this._receiverPhone;
  set receiverPhone(String? receiverPhone) =>
      _$this._receiverPhone = receiverPhone;

  String? _shippingAddress;
  String? get shippingAddress => _$this._shippingAddress;
  set shippingAddress(String? shippingAddress) =>
      _$this._shippingAddress = shippingAddress;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ListBuilder<CreateOrderItemRequest>? _items;
  ListBuilder<CreateOrderItemRequest> get items =>
      _$this._items ??= ListBuilder<CreateOrderItemRequest>();
  set items(ListBuilder<CreateOrderItemRequest>? items) =>
      _$this._items = items;

  CreateOrderRequestBuilder() {
    CreateOrderRequest._defaults(this);
  }

  CreateOrderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _receiverName = $v.receiverName;
      _receiverPhone = $v.receiverPhone;
      _shippingAddress = $v.shippingAddress;
      _note = $v.note;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOrderRequest other) {
    _$v = other as _$CreateOrderRequest;
  }

  @override
  void update(void Function(CreateOrderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOrderRequest build() => _build();

  _$CreateOrderRequest _build() {
    _$CreateOrderRequest _$result;
    try {
      _$result = _$v ??
          _$CreateOrderRequest._(
            userId: userId,
            receiverName: receiverName,
            receiverPhone: receiverPhone,
            shippingAddress: shippingAddress,
            note: note,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateOrderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
