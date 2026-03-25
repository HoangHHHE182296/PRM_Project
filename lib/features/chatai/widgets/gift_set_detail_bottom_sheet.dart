import 'package:flutter/material.dart';
import 'package:public_openapi/public_openapi.dart';
import 'package:intl/intl.dart';

class GiftSetDetailBottomSheet extends StatelessWidget {
  final RecommendedGiftSet giftSet;

  const GiftSetDetailBottomSheet({Key? key, required this.giftSet}) : super(key: key);

  String _formatPrice(double? price) {
    if (price == null) return '0 đ';
    final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');
    return formatter.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(context),
          const Divider(height: 1, color: Colors.grey),
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   if (giftSet.description != null && giftSet.description!.isNotEmpty)
                    Text(
                      giftSet.description!,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Tổng giá ước tính', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey)),
                      Text(
                        _formatPrice(giftSet.totalEstimatedPrice),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.deepPurple),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _buildBoxSection(),
                  const SizedBox(height: 24),
                  _buildItemsSection(),
                ],
              ),
            ),
          ),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              giftSet.giftSetName ?? 'Bộ quà tặng',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Widget _buildBoxSection() {
    final box = giftSet.box;
    if (box == null) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
             Icon(Icons.inventory_2_outlined, color: Colors.deepPurple),
             SizedBox(width: 8),
             Text('Hộp quà', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: box.imageUrl != null 
                ? ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.network(box.imageUrl!, fit: BoxFit.cover))
                : const Icon(Icons.inventory_2, color: Colors.blue),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(box.name ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(box.description ?? '', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  const SizedBox(height: 8),
                  Text(_formatPrice(box.price), style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildItemsSection() {
    final items = giftSet.items;
    if (items == null || items.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
             const Icon(Icons.card_giftcard_outlined, color: Colors.deepPurple),
             const SizedBox(width: 8),
             Text('Sản phẩm bên trong (${items.length})', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 16),
        ...items.map((item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: item.imageUrl != null 
                    ? ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.network(item.imageUrl!, fit: BoxFit.cover))
                    : const Icon(Icons.star_border, color: Colors.deepPurple),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.name ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 4),
                      Text(item.description ?? '', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                      const SizedBox(height: 8),
                      Text(_formatPrice(item.price), style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey[200]!)),
      ),
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      child: ElevatedButton.icon(
        onPressed: () {
          // TODO: Add to cart
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Đã thêm vào giỏ hàng')));
          Navigator.pop(context);
        },
        icon: const Icon(Icons.shopping_cart_outlined),
        label: const Text('Thêm vào Giỏ hàng'),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.white,
          foregroundColor: Colors.deepOrange,
          side: const BorderSide(color: Colors.deepOrange),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
