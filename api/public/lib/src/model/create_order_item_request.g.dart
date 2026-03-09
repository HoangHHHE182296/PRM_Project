// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_item_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOrderItemRequest extends CreateOrderItemRequest {
  @override
  final String? productId;
  @override
  final String? productName;
  @override
  final String? productImage;
  @override
  final int? quantity;
  @override
  final double? unitPrice;

  factory _$CreateOrderItemRequest(
          [void Function(CreateOrderItemRequestBuilder)? updates]) =>
      (CreateOrderItemRequestBuilder()..update(updates))._build();

  _$CreateOrderItemRequest._(
      {this.productId,
      this.productName,
      this.productImage,
      this.quantity,
      this.unitPrice})
      : super._();
  @override
  CreateOrderItemRequest rebuild(
          void Function(CreateOrderItemRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOrderItemRequestBuilder toBuilder() =>
      CreateOrderItemRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOrderItemRequest &&
        productId == other.productId &&
        productName == other.productName &&
        productImage == other.productImage &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, productImage.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOrderItemRequest')
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('productImage', productImage)
          ..add('quantity', quantity)
          ..add('unitPrice', unitPrice))
        .toString();
  }
}

class CreateOrderItemRequestBuilder
    implements Builder<CreateOrderItemRequest, CreateOrderItemRequestBuilder> {
  _$CreateOrderItemRequest? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _productImage;
  String? get productImage => _$this._productImage;
  set productImage(String? productImage) => _$this._productImage = productImage;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  CreateOrderItemRequestBuilder() {
    CreateOrderItemRequest._defaults(this);
  }

  CreateOrderItemRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _productName = $v.productName;
      _productImage = $v.productImage;
      _quantity = $v.quantity;
      _unitPrice = $v.unitPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOrderItemRequest other) {
    _$v = other as _$CreateOrderItemRequest;
  }

  @override
  void update(void Function(CreateOrderItemRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOrderItemRequest build() => _build();

  _$CreateOrderItemRequest _build() {
    final _$result = _$v ??
        _$CreateOrderItemRequest._(
          productId: productId,
          productName: productName,
          productImage: productImage,
          quantity: quantity,
          unitPrice: unitPrice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
