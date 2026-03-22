import 'package:flutter/material.dart';
import 'package:prm_project/services/api_service.dart';
import 'package:prm_project/page/products/product_detail_screen.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:public_openapi/public_openapi.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  // Sử dụng mô hình sinh ra từ Swagger
  late Future<List<ProductListResponse>> _productsFuture;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  void _fetchProducts() {
    // Dùng Dio thuần để bypass lỗi Serialization của openapi-generator-cli
    // do cấu trúc chuẩn JSON trả về (như Metadata hay nested Array) cấu hình chưa map khớp 100%
    _productsFuture = ApiService.client.dio.get('/api/products/get-public-product-list').then((res) {
      final json = res.data;
      if (json['success'] == true && json['data'] != null) {
        final List list = json['data'];
        // Tự map thủ công JSON sang Model ProductListResponse chuẩn
        return list
            .map(
              (e) => ProductListResponse(
                (b) => b
                  ..id = e['id']?.toString()
                  ..name = e['name']?.toString()
                  ..sku = e['sku']?.toString()
                  ..price = (e['price'] as num?)?.toDouble()
                  ..description = e['description']?.toString()
                  ..imageUrl = e['imageUrl']?.toString()
                  ..categoryName = e['categoryName']?.toString(),
              ),
            )
            .toList();
      }
      return [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Danh sách Sản phẩm')),
      body: FutureBuilder(
        future: _productsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Lỗi tải dữ liệu: ${snapshot.error}'));
          } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
            return const Center(child: Text('Không có sản phẩm nào.'));
          }

          final products = snapshot.data as List;
          return GridView.builder(
            padding: const EdgeInsets.all(16.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.75, // Tỉ lệ khung hình (width/height)
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailScreen(product: product)));
                },
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Hình ảnh
                      Expanded(
                        child: product.imageUrl != null && product.imageUrl!.isNotEmpty
                            ? Image.network(
                                product.imageUrl!,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) => _buildPlaceholderImage(),
                              )
                            : _buildPlaceholderImage(),
                      ),
                      // Thông tin
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name ?? 'Không có tên',
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              product.price != null ? '${product.price}đ' : 'Liên hệ',
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.primary, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildPlaceholderImage() {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      child: const Icon(Icons.image, size: 40, color: AppColors.textHint),
    );
  }
}
