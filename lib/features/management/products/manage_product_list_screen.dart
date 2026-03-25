import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prm_project/core/api/api_client.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:public_openapi/public_openapi.dart';

class ManageProductListScreen extends StatefulWidget {
  const ManageProductListScreen({super.key});

  @override
  State<ManageProductListScreen> createState() => _ManageProductListScreenState();
}

class _ManageProductListScreenState extends State<ManageProductListScreen> {
  // Pagination
  int _pageNumber = 1;
  final int _pageSize = 10;
  bool _isLoading = false;
  bool _hasMore = true;
  int _totalCount = 0;
  List<ProductListResponse> _products = [];
  final ScrollController _scrollController = ScrollController();

  // Search
  final TextEditingController _searchController = TextEditingController();
  String? _searchQuery;

  final _currencyFormat = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ', decimalDigits: 0);

  @override
  void initState() {
    super.initState();
    _fetchProducts();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200 &&
        !_isLoading &&
        _hasMore) {
      _fetchProducts(loadMore: true);
    }
  }

  Future<void> _fetchProducts({bool loadMore = false}) async {
    if (_isLoading) return;

    if (!loadMore) {
      _pageNumber = 1;
      _hasMore = true;
      _products.clear();
    }

    setState(() => _isLoading = true);

    final Map<String, dynamic> queryParams = {
      'PageNumber': _pageNumber,
      'PageSize': _pageSize,
    };

    if (_searchQuery != null && _searchQuery!.trim().isNotEmpty) {
      queryParams['Search'] = _searchQuery!.trim();
    }

    try {
      final res = await ApiClient.openApi.dio.get(
        '/api/products/get-public-product-list',
        queryParameters: queryParams,
      );

      final json = res.data;
      if (json['success'] == true && json['data'] != null) {
        // Parse metadata for total count
        final metadata = json['metadata'];
        if (metadata != null) {
          _totalCount = metadata['totalCount'] ?? 0;
        }

        final List list = json['data'];
        List<ProductListResponse> parsedList = list
            .map(
              (e) => ProductListResponse(
                (b) => b
                  ..id = e['id']?.toString()
                  ..name = e['name']?.toString()
                  ..sku = e['sku']?.toString()
                  ..price = (e['price'] as num?)?.toDouble()
                  ..description = e['description']?.toString()
                  ..imageUrl = e['imageUrl']?.toString()
                  ..categoryName = e['categoryName']?.toString()
                  ..isInStock = e['isInStock'] as bool? ?? false,
              ),
            )
            .toList();

        // Client-side search filter (for description)
        if (_searchQuery != null && _searchQuery!.trim().isNotEmpty) {
          final query = _searchQuery!.trim().toLowerCase();
          parsedList = parsedList.where((p) {
            final matchName = p.name?.toLowerCase().contains(query) ?? false;
            final matchDesc = p.description?.toLowerCase().contains(query) ?? false;
            return matchName || matchDesc;
          }).toList();
        }

        setState(() {
          _products.addAll(parsedList);
          _pageNumber++;
          if (list.length < _pageSize) _hasMore = false;
        });
      }
    } catch (e) {
      debugPrint('Error fetching products (management): $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi tải danh sách: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _onSearch(String value) {
    setState(() {
      _searchQuery = value.trim().isEmpty ? null : value.trim();
    });
    _fetchProducts();
  }

  void _showDeleteConfirmDialog(ProductListResponse product) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xác nhận xoá'),
        content: Text('Bạn có chắc muốn xoá sản phẩm "${product.name}"?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Huỷ')),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              // TODO: Gọi API xoá khi có endpoint
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Chức năng xoá chưa được triển khai')),
              );
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Xoá'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý sản phẩm'),
        actions: [
          // Nút thêm sản phẩm mới
          FilledButton.icon(
            onPressed: () {
              // TODO: navigate to create screen
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Chức năng thêm sản phẩm chưa được triển khai')),
              );
            },
            icon: const Icon(Icons.add, size: 18),
            label: const Text('Thêm mới'),
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search bar + thống kê
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Tìm theo tên, mô tả...',
                      prefixIcon: const Icon(Icons.search, size: 20),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear, size: 18),
                              onPressed: () {
                                _searchController.clear();
                                _onSearch('');
                              },
                            )
                          : null,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                      isDense: true,
                    ),
                    onChanged: (v) => setState(() {}),
                    onSubmitted: _onSearch,
                  ),
                ),
                const SizedBox(width: 12),
                if (!_isLoading)
                  Text(
                    'Tổng: $_totalCount',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textLight),
                  ),
              ],
            ),
          ),

          // Bảng dữ liệu
          Expanded(
            child: _products.isEmpty && _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _products.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.inventory_2_outlined, size: 64, color: Colors.grey[300]),
                            const SizedBox(height: 12),
                            const Text('Không tìm thấy sản phẩm nào'),
                          ],
                        ),
                      )
                    : RefreshIndicator(
                        onRefresh: () => _fetchProducts(),
                        child: ListView.separated(
                          controller: _scrollController,
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          itemCount: _products.length + (_hasMore ? 1 : 0),
                          separatorBuilder: (_, __) => const SizedBox(height: 8),
                          itemBuilder: (context, index) {
                            // Loading indicator cuối danh sách
                            if (index == _products.length) {
                              return const Padding(
                                padding: EdgeInsets.all(24),
                                child: Center(child: CircularProgressIndicator()),
                              );
                            }

                            final p = _products[index];
                            return Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                child: Row(
                                  children: [
                                    // Ảnh thumbnail
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: SizedBox(
                                        width: 56,
                                        height: 56,
                                        child: p.imageUrl != null && p.imageUrl!.isNotEmpty
                                            ? Image.network(
                                                p.imageUrl!,
                                                fit: BoxFit.cover,
                                                errorBuilder: (_, __, ___) => _buildImagePlaceholder(),
                                              )
                                            : _buildImagePlaceholder(),
                                      ),
                                    ),
                                    const SizedBox(width: 12),

                                    // Thông tin sản phẩm
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            p.name ?? 'N/A',
                                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: [
                                              Text(
                                                p.price != null ? _currencyFormat.format(p.price) : 'Liên hệ',
                                                style: TextStyle(
                                                  color: AppColors.primary,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              _StockBadge(inStock: p.isInStock ?? false),
                                            ],
                                          ),
                                          if (p.categoryName != null)
                                            Text(
                                              p.categoryName!,
                                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textLight),
                                            ),
                                        ],
                                      ),
                                    ),

                                    // Action buttons
                                    Column(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.edit_outlined, size: 20),
                                          color: Colors.blue,
                                          tooltip: 'Sửa',
                                          onPressed: () {
                                            // TODO: navigate to edit screen
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Chức năng sửa chưa được triển khai')),
                                            );
                                          },
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.delete_outlined, size: 20),
                                          color: Colors.red,
                                          tooltip: 'Xoá',
                                          onPressed: () => _showDeleteConfirmDialog(p),
                                        ),
                                      ],
                                    ),
                                  ],
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

  Widget _buildImagePlaceholder() {
    return Container(
      color: Colors.grey[200],
      child: const Icon(Icons.image_outlined, color: Colors.grey),
    );
  }
}

class _StockBadge extends StatelessWidget {
  final bool inStock;
  const _StockBadge({required this.inStock});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: inStock ? Colors.green.withOpacity(0.12) : Colors.red.withOpacity(0.12),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        inStock ? 'Còn hàng' : 'Hết hàng',
        style: TextStyle(
          fontSize: 11,
          color: inStock ? Colors.green[700] : Colors.red[700],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
