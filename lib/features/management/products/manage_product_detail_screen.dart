import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:management_openapi/management_openapi.dart';
import 'package:prm_project/core/api/api_client.dart';
import 'package:prm_project/shared/theme/app_colors.dart';

import 'manage_product_form_screen.dart';

class ManageProductDetailScreen extends StatefulWidget {
  final String productId;

  const ManageProductDetailScreen({super.key, required this.productId});

  @override
  State<ManageProductDetailScreen> createState() => _ManageProductDetailScreenState();
}

class _ManageProductDetailScreenState extends State<ManageProductDetailScreen> {
  bool _isLoading = true;
  bool _isDeleting = false;
  ProductDetailResponse? _product;

  final _currencyFormat = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ', decimalDigits: 0);

  @override
  void initState() {
    super.initState();
    _fetchDetails();
  }

  Future<void> _fetchDetails() async {
    setState(() => _isLoading = true);
    try {
      final res = await ApiClient.managementApi.getProductApi().apiProductsGetProductDetailIdGet(id: widget.productId);
      debugPrint('Fetch Detail Response: ${res.statusCode} - ${res.data}');
      if (res.data?.success == true && res.data?.data != null) {
        _product = res.data!.data!;
      } else {
        debugPrint('Fetch Detail Failed: success=${res.data?.success}, data=${res.data?.data}');
        if (mounted) _showError(res.data?.message ?? 'Không thể tải thông tin sản phẩm');
      }
    } catch (e) {
      debugPrint('Error fetching product details: $e');
      if (e is DioException) {
        debugPrint('Dio error data: ${e.response?.data}');
      }
      if (mounted) _showError('Lỗi tải dữ liệu: $e');
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _deleteProduct() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xác nhận xoá'),
        content: Text('Bạn có chắc muốn xoá sản phẩm "${_product?.name}"?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Huỷ')),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Xoá'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    setState(() => _isDeleting = true);
    try {
      final res = await ApiClient.managementApi.getProductApi().apiProductsDeleteProductIdDelete(id: widget.productId);
      if (res.data?.success == true) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Xoá sản phẩm thành công!'), backgroundColor: Colors.green),
          );
          Navigator.pop(context, true); // return true to refresh list
        }
      } else {
        if (mounted) _showError(res.data?.message ?? 'Xoá thất bại');
      }
    } catch (e) {
      if (mounted) _showError('Lỗi khi xoá: $e');
    } finally {
      if (mounted) setState(() => _isDeleting = false);
    }
  }

  void _showError(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: Colors.red[700]),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, size: 20, color: AppColors.primary),
          const SizedBox(width: 8),
          Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {Color? valueColor, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(label, style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500)),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: valueColor ?? Colors.black87,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Chi tiết sản phẩm')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_product == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Chi tiết sản phẩm')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.grey),
              const SizedBox(height: 16),
              const Text('Không tìm thấy thông tin sản phẩm'),
              TextButton(onPressed: () => Navigator.pop(context), child: const Text('Quay lại'))
            ],
          ),
        ),
      );
    }

    final p = _product!;
    final coverImage = (p.imageUrls != null && p.imageUrls!.isNotEmpty) ? p.imageUrls!.first : p.imageUrl;
    final isLowStock = (p.stockQuantity ?? 0) <= (p.lowStockThreshold ?? 0);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Chi tiết sản phẩm'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            tooltip: 'Sửa',
            onPressed: () async {
              final updated = await Navigator.push<bool>(
                context,
                MaterialPageRoute(builder: (_) => ManageProductFormScreen(productId: p.id)),
              );
              if (updated == true) {
                _fetchDetails(); // Reload details if edited
              }
            },
          ),
          _isDeleting
              ? const Padding(padding: EdgeInsets.all(12), child: SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2)))
              : IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  tooltip: 'Xoá',
                  onPressed: _deleteProduct,
                ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- HEADER MAGE ---
            if (coverImage != null && coverImage.isNotEmpty)
              Image.network(
                coverImage,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 250,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 64, color: Colors.grey),
                ),
              )
            else
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Icon(Icons.inventory_2_outlined, size: 80, color: Colors.grey),
              ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // --- BASIC INFO ---
                  Card(
                    elevation: 0,
                    margin: const EdgeInsets.only(bottom: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.grey.shade200)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionHeader('Thông tin chung', Icons.info_outline),
                          _buildInfoRow('Tên sản phẩm', p.name ?? 'N/A', isBold: true, valueColor: AppColors.primary),
                          _buildInfoRow('SKU', p.sku ?? 'N/A'),
                          _buildInfoRow('Loại', p.typeName ?? 'N/A'),
                          _buildInfoRow('Danh mục', p.categoryName ?? 'N/A'),
                          _buildInfoRow(
                            'Giá bán',
                            p.price != null ? _currencyFormat.format(p.price) : '0đ',
                            isBold: true,
                            valueColor: Colors.red[700],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // --- STOCK INFO ---
                  Card(
                    elevation: 0,
                    margin: const EdgeInsets.only(bottom: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.grey.shade200)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionHeader('Kho hàng & Trạng thái', Icons.inventory_outlined),
                          _buildInfoRow('Trạng thái', p.status ?? 'N/A', valueColor: p.status == 'Active' ? Colors.green : Colors.grey),
                          _buildInfoRow(
                            'Tồn kho',
                            '${p.stockQuantity ?? 0}',
                            valueColor: isLowStock ? Colors.orange[800] : Colors.green[700],
                            isBold: true,
                          ),
                          _buildInfoRow('Mức cảnh báo', '${p.lowStockThreshold ?? 0}'),
                        ],
                      ),
                    ),
                  ),

                  // --- GIFTSET COMPONENTS ---
                  if (p.typeName == 'GiftSet' && p.includedItems != null)
                    Card(
                      elevation: 0,
                      margin: const EdgeInsets.only(bottom: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.grey.shade200)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionHeader('Thành phần Bộ quà tặng', Icons.redeem),
                            _buildInfoRow('Hộp cơ bản (BaseBox)', p.includedItems!.boxName ?? 'N/A', isBold: true),
                            if (p.includedItems!.items != null && p.includedItems!.items!.isNotEmpty) ...[
                              const Divider(height: 24),
                              const Text('Danh sách thành phần (Component):', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
                              const SizedBox(height: 12),
                              ...p.includedItems!.items!.map((comp) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),
                                          child: const Icon(Icons.widgets_outlined, size: 16, color: Colors.blue),
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(child: Text(comp.componentName ?? 'N/A')),
                                        Text('x${comp.quantity}', style: const TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  )),
                            ],
                          ],
                        ),
                      ),
                    ),

                  // --- DESCRIPTION ---
                  if (p.description != null && p.description!.isNotEmpty)
                    Card(
                      elevation: 0,
                      margin: const EdgeInsets.only(bottom: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.grey.shade200)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionHeader('Mô tả chi tiết', Icons.description_outlined),
                            Text(p.description!, style: const TextStyle(height: 1.5, color: Colors.black87)),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
