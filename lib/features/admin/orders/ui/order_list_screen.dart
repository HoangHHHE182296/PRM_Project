import 'package:flutter/material.dart';
import 'package:prm_project/features/admin/services/order_service.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:internal_openapi/internal_openapi.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  final OrderService _orderService = OrderService();
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<AdminOrder> _orders = [];
  final Set<String> _orderIds = <String>{};

  int _pageNumber = 1;
  final int _pageSize = 20;
  bool _isLoading = false;
  bool _hasMore = true;
  String? _errorMessage;
  OrderStatus? _statusFilter;

  static const List<OrderStatus> _uiStatuses = <OrderStatus>[
    OrderStatus.pendingPayment,
    OrderStatus.failed,
    OrderStatus.shipped,
    OrderStatus.cancelled,
    OrderStatus.delivered,
  ];

  List<OrderStatus> _allowedNextStatuses(OrderStatus current) {
    switch (current) {
      case OrderStatus.shipped:
        return const <OrderStatus>[
          OrderStatus.delivered,
          OrderStatus.cancelled,
        ];
      case OrderStatus.pendingPayment:
        return const <OrderStatus>[OrderStatus.failed, OrderStatus.delivered];
      default:
        return _uiStatuses;
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _fetchOrders();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        !_isLoading &&
        _hasMore) {
      _fetchOrders(loadMore: true);
    }
  }

  Future<void> _fetchOrders({bool loadMore = false}) async {
    if (_isLoading) return;

    if (!loadMore) {
      _pageNumber = 1;
      _hasMore = true;
      _orders.clear();
      _orderIds.clear();
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final result = await _orderService.getOrders(
        pageNumber: _pageNumber,
        pageSize: _pageSize,
        search: _searchController.text.trim().isEmpty
            ? null
            : _searchController.text.trim(),
        sortBy: 'CreatedAt',
        sortDescending: true,
      );

      final filtered = _applyStatusFilter(result.orders);
      final newItems = <AdminOrder>[];
      for (final order in filtered) {
        final id = order.id;
        if (id == null || id.isEmpty) {
          newItems.add(order);
          continue;
        }
        if (_orderIds.add(id)) {
          newItems.add(order);
        }
      }

      if (!mounted) return;
      setState(() {
        if (newItems.isNotEmpty) {
          _orders.addAll(newItems);
        }

        if (result.orders.isNotEmpty && newItems.isEmpty) {
          _hasMore = false;
        } else if (result.orders.isNotEmpty) {
          _pageNumber++;
        }

        final metadata = result.metadata;
        if (metadata?.hasNext == false || result.orders.length < _pageSize) {
          _hasMore = false;
        }
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _errorMessage = e.toString().replaceFirst('Exception: ', '');
      });
    } finally {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
      });
    }
  }

  List<AdminOrder> _applyStatusFilter(List<AdminOrder> source) {
    if (_statusFilter == null) return source;
    return source.where((order) => order.status == _statusFilter).toList();
  }

  Future<void> _refresh() => _fetchOrders(loadMore: false);

  Future<void> _changeStatus(AdminOrder order) async {
    final id = order.id;
    if (id == null || id.isEmpty) {
      _showSnackBar('Đơn hàng không hợp lệ (thiếu id).');
      return;
    }

    final currentStatus = order.status ?? OrderStatus.pendingPayment;
    final allowedStatuses = _allowedNextStatuses(currentStatus);
    OrderStatus selectedStatus = allowedStatuses.contains(currentStatus)
        ? currentStatus
        : allowedStatuses.first;

    final updated = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom + 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Cập nhật trạng thái đơn hàng',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context, false),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<OrderStatus>(
                    value: selectedStatus,
                    decoration: const InputDecoration(
                      labelText: 'Trạng thái',
                      border: OutlineInputBorder(),
                    ),
                    items: allowedStatuses
                        .map(
                          (status) => DropdownMenuItem<OrderStatus>(
                            value: status,
                            child: Text(_statusLabel(status)),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value == null) return;
                      setModalState(() => selectedStatus = value);
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          if (selectedStatus == order.status) {
                            if (!context.mounted) return;
                            Navigator.pop(context, false);
                            return;
                          }
                          await _orderService.updateOrderStatus(
                            id: id,
                            status: selectedStatus,
                          );
                          if (!context.mounted) return;
                          Navigator.pop(context, true);
                        } catch (e) {
                          if (!context.mounted) return;
                          _showSnackBar(
                            e.toString().replaceFirst('Exception: ', ''),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                      ),
                      child: const Text(
                        'Lưu trạng thái',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );

    if (updated == true) {
      if (!mounted) return;
      setState(() {
        final index = _orders.indexWhere((o) => o.id == order.id);
        if (index >= 0) {
          final current = _orders[index];
          _orders[index] = AdminOrder(
            id: current.id,
            userId: current.userId,
            receiverName: current.receiverName,
            receiverPhone: current.receiverPhone,
            totalAmount: current.totalAmount,
            shippingAddress: current.shippingAddress,
            status: selectedStatus,
            paymentMethod: current.paymentMethod,
            createdAt: current.createdAt,
            items: current.items,
          );
        }
      });

      await _refresh();
      if (!mounted) return;
      _showSnackBar('Cập nhật trạng thái đơn hàng thành công');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  String _statusLabel(OrderStatus status) {
    switch (status) {
      case OrderStatus.pendingPayment:
        return 'Chờ thanh toán';
      case OrderStatus.shipped:
        return 'Đang giao';
      case OrderStatus.delivered:
        return 'Đã giao';
      case OrderStatus.cancelled:
        return 'Đã hủy';
      case OrderStatus.failed:
        return 'Thanh toán thất bại';
      default:
        return status.name;
    }
  }

  Color _statusColor(OrderStatus status) {
    switch (status) {
      case OrderStatus.pendingPayment:
        return Colors.orange;
      case OrderStatus.paid:
        return Colors.blue;
      case OrderStatus.processing:
        return Colors.purple;
      case OrderStatus.shipped:
        return Colors.indigo;
      case OrderStatus.delivered:
        return Colors.green;
      case OrderStatus.cancelled:
        return Colors.red;
      case OrderStatus.refunded:
        return Colors.teal;
      case OrderStatus.failed:
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return '—';
    final local = dateTime.toLocal();
    String twoDigits(int value) => value.toString().padLeft(2, '0');
    return '${twoDigits(local.day)}/${twoDigits(local.month)}/${local.year} ${twoDigits(local.hour)}:${twoDigits(local.minute)}';
  }

  String _paymentLabel(PaymentMethod? paymentMethod) {
    switch (paymentMethod) {
      case PaymentMethod.COD:
        return 'COD';
      case PaymentMethod.momo:
        return 'Momo';
      case PaymentMethod.vNPay:
        return 'VNPay';
      case PaymentMethod.bankTransfer:
        return 'Chuyển khoản';
      case PaymentMethod.creditCard:
        return 'Thẻ tín dụng';
      case null:
        return '—';
      default:
        return paymentMethod.name;
    }
  }

  @override
  Widget build(BuildContext context) {
    final visibleOrders = _applyStatusFilter(_orders);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý Đơn hàng'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _refresh),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Tìm theo tên, số điện thoại, địa chỉ...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                _refresh();
                                setState(() {});
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onSubmitted: (_) => _refresh(),
                    onChanged: (_) => setState(() {}),
                  ),
                ),
                const SizedBox(width: 8),
                PopupMenuButton<OrderStatus?>(
                  initialValue: _statusFilter,
                  tooltip: 'Lọc trạng thái',
                  onSelected: (value) {
                    setState(() {
                      _statusFilter = value;
                    });
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem<OrderStatus?>(
                      value: null,
                      child: Text('Tất cả trạng thái'),
                    ),
                    ..._uiStatuses.map(
                      (status) => PopupMenuItem<OrderStatus?>(
                        value: status,
                        child: Text(_statusLabel(status)),
                      ),
                    ),
                  ],
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.primary.withOpacity(0.3),
                      ),
                    ),
                    child: Icon(
                      _statusFilter == null
                          ? Icons.filter_alt_outlined
                          : Icons.filter_alt,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_statusFilter != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Chip(
                  label: Text('Đang lọc: ${_statusLabel(_statusFilter!)}'),
                  onDeleted: () => setState(() => _statusFilter = null),
                ),
              ),
            ),
          if (_errorMessage != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ),
          Expanded(
            child: _orders.isEmpty && _isLoading
                ? const Center(child: CircularProgressIndicator())
                : visibleOrders.isEmpty
                ? const Center(child: Text('Không có đơn hàng nào'))
                : RefreshIndicator(
                    onRefresh: _refresh,
                    child: ListView.builder(
                      controller: _scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                      itemCount: visibleOrders.length + (_hasMore ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == visibleOrders.length) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }

                        final order = visibleOrders[index];
                        final status = order.status;
                        final bool isLocked =
                            status == OrderStatus.cancelled ||
                            status == OrderStatus.delivered;

                        return Card(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: InkWell(
                            onTap: isLocked ? null : () => _changeStatus(order),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              order.receiverName ??
                                                  'Không có tên người nhận',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              'SĐT: ${order.receiverPhone ?? '—'}',
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              'Ngày tạo: ${_formatDateTime(order.createdAt)}',
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Chip(
                                        label: Text(
                                          _statusLabel(status),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        backgroundColor: _statusColor(status),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    order.shippingAddress ??
                                        'Không có địa chỉ giao hàng',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 12),
                                  if (order.items.isNotEmpty)
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade50,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sản phẩm (${order.items.length})',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          ...order.items.take(2).map((item) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 8,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 44,
                                                    height: 44,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            4,
                                                          ),
                                                    ),
                                                    child:
                                                        item
                                                            .productImage
                                                            .isNotEmpty
                                                        ? ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  4,
                                                                ),
                                                            child: Image.network(
                                                              item.productImage,
                                                              fit: BoxFit.cover,
                                                              errorBuilder:
                                                                  (
                                                                    _,
                                                                    __,
                                                                    ___,
                                                                  ) => const Icon(
                                                                    Icons
                                                                        .image_not_supported,
                                                                    size: 18,
                                                                  ),
                                                            ),
                                                          )
                                                        : const Icon(
                                                            Icons
                                                                .image_not_supported,
                                                            size: 18,
                                                          ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          item
                                                                  .productName
                                                                  .isNotEmpty
                                                              ? item.productName
                                                              : 'Sản phẩm không tên',
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style:
                                                              const TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          'SL: ${item.quantity} • ${(item.unitPrice).toStringAsFixed(0)}đ',
                                                          style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors
                                                                .grey
                                                                .shade700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                          if (order.items.length > 2)
                                            Text(
                                              '... và ${order.items.length - 2} sản phẩm khác',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.grey.shade600,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  if (order.items.isEmpty)
                                    Text(
                                      'Không có sản phẩm',
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  const SizedBox(height: 12),
                                  Wrap(
                                    spacing: 12,
                                    runSpacing: 8,
                                    children: [
                                      _infoChip(
                                        'Thanh toán',
                                        _paymentLabel(order.paymentMethod),
                                      ),
                                      _infoChip(
                                        'Tổng tiền',
                                        '${(order.totalAmount ?? 0).toStringAsFixed(0)}đ',
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton.icon(
                                      onPressed: isLocked
                                          ? null
                                          : () async {
                                              final id = order.id;
                                              if (id == null || id.isEmpty) {
                                                _showSnackBar(
                                                  'Đơn hàng không hợp lệ (thiếu id).',
                                                );
                                                return;
                                              }

                                              try {
                                                await _orderService
                                                    .updateOrderStatus(
                                                      id: id,
                                                      status:
                                                          OrderStatus.cancelled,
                                                    );
                                                if (!mounted) return;
                                                await _refresh();
                                                if (!mounted) return;
                                                _showSnackBar(
                                                  'Đã hủy đơn hàng',
                                                );
                                              } catch (e) {
                                                if (!mounted) return;
                                                _showSnackBar(
                                                  e.toString().replaceFirst(
                                                    'Exception: ',
                                                    '',
                                                  ),
                                                );
                                              }
                                            },
                                      icon: const Icon(Icons.cancel_outlined),
                                      label: const Text('Hủy'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _infoChip(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text('$label: $value', style: const TextStyle(fontSize: 12)),
    );
  }
}
