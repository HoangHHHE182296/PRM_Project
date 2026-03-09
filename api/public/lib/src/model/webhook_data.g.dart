// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookData extends WebhookData {
  @override
  final int? orderCode;
  @override
  final int? amount;
  @override
  final String? description;
  @override
  final String? accountNumber;
  @override
  final String? reference;
  @override
  final String? transactionDateTime;
  @override
  final String? currency;
  @override
  final String? paymentLinkId;
  @override
  final String? code;
  @override
  final String? desc;
  @override
  final String? counterAccountBankId;
  @override
  final String? counterAccountBankName;
  @override
  final String? counterAccountName;
  @override
  final String? counterAccountNumber;
  @override
  final String? virtualAccountName;
  @override
  final String? virtualAccountNumber;

  factory _$WebhookData([void Function(WebhookDataBuilder)? updates]) =>
      (WebhookDataBuilder()..update(updates))._build();

  _$WebhookData._(
      {this.orderCode,
      this.amount,
      this.description,
      this.accountNumber,
      this.reference,
      this.transactionDateTime,
      this.currency,
      this.paymentLinkId,
      this.code,
      this.desc,
      this.counterAccountBankId,
      this.counterAccountBankName,
      this.counterAccountName,
      this.counterAccountNumber,
      this.virtualAccountName,
      this.virtualAccountNumber})
      : super._();
  @override
  WebhookData rebuild(void Function(WebhookDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookDataBuilder toBuilder() => WebhookDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookData &&
        orderCode == other.orderCode &&
        amount == other.amount &&
        description == other.description &&
        accountNumber == other.accountNumber &&
        reference == other.reference &&
        transactionDateTime == other.transactionDateTime &&
        currency == other.currency &&
        paymentLinkId == other.paymentLinkId &&
        code == other.code &&
        desc == other.desc &&
        counterAccountBankId == other.counterAccountBankId &&
        counterAccountBankName == other.counterAccountBankName &&
        counterAccountName == other.counterAccountName &&
        counterAccountNumber == other.counterAccountNumber &&
        virtualAccountName == other.virtualAccountName &&
        virtualAccountNumber == other.virtualAccountNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderCode.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jc(_$hash, transactionDateTime.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, paymentLinkId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, counterAccountBankId.hashCode);
    _$hash = $jc(_$hash, counterAccountBankName.hashCode);
    _$hash = $jc(_$hash, counterAccountName.hashCode);
    _$hash = $jc(_$hash, counterAccountNumber.hashCode);
    _$hash = $jc(_$hash, virtualAccountName.hashCode);
    _$hash = $jc(_$hash, virtualAccountNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhookData')
          ..add('orderCode', orderCode)
          ..add('amount', amount)
          ..add('description', description)
          ..add('accountNumber', accountNumber)
          ..add('reference', reference)
          ..add('transactionDateTime', transactionDateTime)
          ..add('currency', currency)
          ..add('paymentLinkId', paymentLinkId)
          ..add('code', code)
          ..add('desc', desc)
          ..add('counterAccountBankId', counterAccountBankId)
          ..add('counterAccountBankName', counterAccountBankName)
          ..add('counterAccountName', counterAccountName)
          ..add('counterAccountNumber', counterAccountNumber)
          ..add('virtualAccountName', virtualAccountName)
          ..add('virtualAccountNumber', virtualAccountNumber))
        .toString();
  }
}

class WebhookDataBuilder implements Builder<WebhookData, WebhookDataBuilder> {
  _$WebhookData? _$v;

  int? _orderCode;
  int? get orderCode => _$this._orderCode;
  set orderCode(int? orderCode) => _$this._orderCode = orderCode;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _reference;
  String? get reference => _$this._reference;
  set reference(String? reference) => _$this._reference = reference;

  String? _transactionDateTime;
  String? get transactionDateTime => _$this._transactionDateTime;
  set transactionDateTime(String? transactionDateTime) =>
      _$this._transactionDateTime = transactionDateTime;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _paymentLinkId;
  String? get paymentLinkId => _$this._paymentLinkId;
  set paymentLinkId(String? paymentLinkId) =>
      _$this._paymentLinkId = paymentLinkId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  String? _counterAccountBankId;
  String? get counterAccountBankId => _$this._counterAccountBankId;
  set counterAccountBankId(String? counterAccountBankId) =>
      _$this._counterAccountBankId = counterAccountBankId;

  String? _counterAccountBankName;
  String? get counterAccountBankName => _$this._counterAccountBankName;
  set counterAccountBankName(String? counterAccountBankName) =>
      _$this._counterAccountBankName = counterAccountBankName;

  String? _counterAccountName;
  String? get counterAccountName => _$this._counterAccountName;
  set counterAccountName(String? counterAccountName) =>
      _$this._counterAccountName = counterAccountName;

  String? _counterAccountNumber;
  String? get counterAccountNumber => _$this._counterAccountNumber;
  set counterAccountNumber(String? counterAccountNumber) =>
      _$this._counterAccountNumber = counterAccountNumber;

  String? _virtualAccountName;
  String? get virtualAccountName => _$this._virtualAccountName;
  set virtualAccountName(String? virtualAccountName) =>
      _$this._virtualAccountName = virtualAccountName;

  String? _virtualAccountNumber;
  String? get virtualAccountNumber => _$this._virtualAccountNumber;
  set virtualAccountNumber(String? virtualAccountNumber) =>
      _$this._virtualAccountNumber = virtualAccountNumber;

  WebhookDataBuilder() {
    WebhookData._defaults(this);
  }

  WebhookDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderCode = $v.orderCode;
      _amount = $v.amount;
      _description = $v.description;
      _accountNumber = $v.accountNumber;
      _reference = $v.reference;
      _transactionDateTime = $v.transactionDateTime;
      _currency = $v.currency;
      _paymentLinkId = $v.paymentLinkId;
      _code = $v.code;
      _desc = $v.desc;
      _counterAccountBankId = $v.counterAccountBankId;
      _counterAccountBankName = $v.counterAccountBankName;
      _counterAccountName = $v.counterAccountName;
      _counterAccountNumber = $v.counterAccountNumber;
      _virtualAccountName = $v.virtualAccountName;
      _virtualAccountNumber = $v.virtualAccountNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookData other) {
    _$v = other as _$WebhookData;
  }

  @override
  void update(void Function(WebhookDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookData build() => _build();

  _$WebhookData _build() {
    final _$result = _$v ??
        _$WebhookData._(
          orderCode: orderCode,
          amount: amount,
          description: description,
          accountNumber: accountNumber,
          reference: reference,
          transactionDateTime: transactionDateTime,
          currency: currency,
          paymentLinkId: paymentLinkId,
          code: code,
          desc: desc,
          counterAccountBankId: counterAccountBankId,
          counterAccountBankName: counterAccountBankName,
          counterAccountName: counterAccountName,
          counterAccountNumber: counterAccountNumber,
          virtualAccountName: virtualAccountName,
          virtualAccountNumber: virtualAccountNumber,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
