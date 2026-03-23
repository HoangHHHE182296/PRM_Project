import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:prm_project/shared/widgets/buttons/app_button.widget.dart';

class ProductDetailScreen extends StatelessWidget {
  // Thay thế dynamic bằng Model đúng từ OpenAPI (ví dụ: ProductDto)
  final dynamic product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // Trích xuất dữ liệu an toàn dựa theo model đang dùng
    final String name = product.name ?? 'Không có tên';
    final String price = product.price != null ? '${product.price}đ' : 'Liên hệ';
    // Dùng try-catch hoặc kiểm tra thuộc tính description tuỳ vào dynamic object
    String description = 'Đang cập nhật mô tả quà tặng...';
    String? imageUrl;
    try {
      if (product.description != null) {
        description = product.description;
      }
      if (product.imageUrl != null) {
        imageUrl = product.imageUrl;
      }
    } catch (_) {}

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Chi tiết quà tặng'), backgroundColor: AppColors.background, elevation: 0, foregroundColor: AppColors.textDark),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image
            imageUrl != null && imageUrl.isNotEmpty
                ? Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: const Icon(Icons.image, size: 80, color: AppColors.textHint),
                    ),
                  )
                : Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Icon(Icons.image, size: 80, color: AppColors.textHint),
                  ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product name
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: AppColors.textDark),
                  ),
                  const SizedBox(height: 8),

                  // product price
                  Text(
                    price,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),

                  // product description
                  Text(
                    'Mô tả',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, color: AppColors.textDark),
                  ),
                  const SizedBox(height: 8),
                  Text(description, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.textLight, height: 1.5)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButtonWidget(
            text: 'Thêm vào giỏ hàng',
            icon: Icons.shopping_cart_outlined,
            isFullWidth: true,
            size: ButtonSize.large,
            type: ButtonType.primary,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Đã thêm quà tặng vào giỏ hàng!')));
            },
          ),
        ),
      ),
    );
  }
}
