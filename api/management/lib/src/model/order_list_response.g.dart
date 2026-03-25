// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderListResponse extends OrderListResponse {
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? receiverName;
  @override
  final String? receiverPhone;
  @override
  final double? totalAmount;
  @override
  final String? shippingAddress;
  @override
  final OrderStatus? status;
  @override
  final PaymentMethod? paymentMethod;
  @override
  final bool? isPaid;
  @override
  final DateTime? createdAt;

  factory _$OrderListResponse(
          [void Function(OrderListResponseBuilder)? updates]) =>
      (OrderListResponseBuilder()..update(updates))._build();

  _$OrderListResponse._(
      {this.id,
      this.userId,
      this.receiverName,
      this.receiverPhone,
      this.totalAmount,
      this.shippingAddress,
      this.status,
      this.paymentMethod,
      this.isPaid,
      this.createdAt})
      : super._();
  @override
  OrderListResponse rebuild(void Function(OrderListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderListResponseBuilder toBuilder() =>
      OrderListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderListResponse &&
        id == other.id &&
        userId == other.userId &&
        receiverName == other.receiverName &&
        receiverPhone == other.receiverPhone &&
        totalAmount == other.totalAmount &&
        shippingAddress == other.shippingAddress &&
        status == other.status &&
        paymentMethod == other.paymentMethod &&
        isPaid == other.isPaid &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, receiverName.hashCode);
    _$hash = $jc(_$hash, receiverPhone.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, shippingAddress.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, isPaid.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderListResponse')
          ..add('id', id)
          ..add('userId', userId)
          ..add('receiverName', receiverName)
          ..add('receiverPhone', receiverPhone)
          ..add('totalAmount', totalAmount)
          ..add('shippingAddress', shippingAddress)
          ..add('status', status)
          ..add('paymentMethod', paymentMethod)
          ..add('isPaid', isPaid)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class OrderListResponseBuilder
    implements Builder<OrderListResponse, OrderListResponseBuilder> {
  _$OrderListResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  double? _totalAmount;
  double? get totalAmount => _$this._totalAmount;
  set totalAmount(double? totalAmount) => _$this._totalAmount = totalAmount;

  String? _shippingAddress;
  String? get shippingAddress => _$this._shippingAddress;
  set shippingAddress(String? shippingAddress) =>
      _$this._shippingAddress = shippingAddress;

  OrderStatus? _status;
  OrderStatus? get status => _$this._status;
  set status(OrderStatus? status) => _$this._status = status;

  PaymentMethod? _paymentMethod;
  PaymentMethod? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(PaymentMethod? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  bool? _isPaid;
  bool? get isPaid => _$this._isPaid;
  set isPaid(bool? isPaid) => _$this._isPaid = isPaid;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  OrderListResponseBuilder() {
    OrderListResponse._defaults(this);
  }

  OrderListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _receiverName = $v.receiverName;
      _receiverPhone = $v.receiverPhone;
      _totalAmount = $v.totalAmount;
      _shippingAddress = $v.shippingAddress;
      _status = $v.status;
      _paymentMethod = $v.paymentMethod;
      _isPaid = $v.isPaid;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderListResponse other) {
    _$v = other as _$OrderListResponse;
  }

  @override
  void update(void Function(OrderListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderListResponse build() => _build();

  _$OrderListResponse _build() {
    final _$result = _$v ??
        _$OrderListResponse._(
          id: id,
          userId: userId,
          receiverName: receiverName,
          receiverPhone: receiverPhone,
          totalAmount: totalAmount,
          shippingAddress: shippingAddress,
          status: status,
          paymentMethod: paymentMethod,
          isPaid: isPaid,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
