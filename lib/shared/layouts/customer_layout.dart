import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prm_project/core/constants/router_constant.dart';
import 'package:prm_project/core/di/injection.dart';
import 'package:prm_project/core/service/credential_service.dart';
import 'package:prm_project/shared/theme/app_colors.dart';

class CustomerLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const CustomerLayout({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Header (AppBar)
      appBar: AppBar(
        title: const Text('SesameBox', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () => context.push('/cart'), // Route này bạn sẽ định nghĩa sau
          ),
        ],
      ),

      // 2. Side Menu (Drawer) - Tách ra widget riêng bên dưới cho sạch
      drawer: const _CustomerDrawer(),

      // 3. Nội dung thay đổi (Tương đương <router-outlet>)
      body: navigationShell,

      // 4. Footer (Bottom Navigation)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textLight,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined), activeIcon: Icon(Icons.card_giftcard), label: 'Quà tặng'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person), label: 'Tôi'),
        ],
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    // Điều hướng giữa các nhánh (Branches) của StatefulShellRoute
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }
}

class _CustomerDrawer extends StatelessWidget {
  const _CustomerDrawer();

  @override
  Widget build(BuildContext context) {
    final cred = sl<CredentialService>();
    final user = cred.userLoggedInfo;

    final bool isAdmin = (user?.roles ?? []).any((r) => r.toLowerCase().contains('admin'));

    return Drawer(
      child: Column(
        children: [
          // Header Drawer hiển thị Profile User
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: AppColors.primary),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: (user?.imgUrl != null && user!.imgUrl.isNotEmpty) ? NetworkImage(user.imgUrl) : null,
              child: (user?.imgUrl == null || user!.imgUrl.isEmpty) ? const Icon(Icons.person, size: 40, color: AppColors.primary) : null,
            ),
            accountName: Text(user?.name ?? 'Khách hàng', style: const TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text(user?.email ?? 'Chưa đăng nhập'),
          ),

          // Menu điều hướng theo role (cuộn được, chiếm hết khoảng trống còn lại)
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                if (isAdmin) ...[
                  // Menu chiều hướng cho Admin
                  ListTile(
                    leading: const Icon(Icons.inventory_2_outlined),
                    title: const Text('Quản lý sản phẩm'),
                    onTap: () => context.push('/manage/products'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.category_outlined),
                    title: const Text('Quản lý danh mục'),
                    onTap: () => context.push('/manage/categories'),
                  ),
                  ListTile(leading: const Icon(Icons.receipt_long_outlined), title: const Text('Quản lý đơn đặt'), onTap: () => context.push('/manage/orders')),
                ] else ...[
                  // Menu chiều hướng cho Customer
                  ListTile(leading: const Icon(Icons.history), title: const Text('Lịch sử đơn hàng'), onTap: () => context.push('/orders')),
                  ListTile(leading: const Icon(Icons.favorite_border), title: const Text('Quà tặng đã lưu'), onTap: () {}),
                ],
              ],
            ),
          ),

          // Nút đăng xuất ghim dưới cùng
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Đăng xuất', style: TextStyle(color: Colors.red)),
            onTap: () {
              cred.clearAccessToken();
              context.go(RouterConst.login.router);
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
