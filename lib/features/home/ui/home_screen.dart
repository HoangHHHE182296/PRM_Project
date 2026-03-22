import 'package:flutter/material.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentBannerIndex = 0;
  Timer? _timer;

  final List<String> banners = [
    'https://images.unsplash.com/photo-1549465220-1a8b9238cd48?q=50&w=400&auto=format&fit=crop',
    'https://images.unsplash.com/photo-1513201099705-a9746e1e201f?q=50&w=400&auto=format&fit=crop',
    'https://images.unsplash.com/photo-1512909006721-3d6018887383?q=50&w=400&auto=format&fit=crop',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        int nextIndex = _currentBannerIndex + 1;
        if (nextIndex >= banners.length) {
          nextIndex = 0;
        }
        _pageController.animateToPage(
          nextIndex,
          duration: const Duration(milliseconds: 800),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeroBanner(),
            const SizedBox(height: 32),
            _buildCategories(),
            const SizedBox(height: 40),
            _buildSectionTitle('Quà tặng được yêu thích nhất 💖'),
            const SizedBox(height: 20),
            _buildHorizontalGifts(),
            const SizedBox(height: 40),
            _buildSectionTitle('Gợi ý riêng cho bạn ✨'),
            const SizedBox(height: 20),
            _buildGridGifts(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroBanner() {
    return Stack(
      children: [
        SizedBox(
          height: 240,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentBannerIndex = index;
              });
            },
            itemCount: banners.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.15),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        banners[index],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Container(color: Colors.grey.shade200),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withValues(alpha: 0.7),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Gắn kết yêu thương\nTrao ngàn tâm ý",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 24,
          right: 36,
          child: Row(
            children: List.generate(banners.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.only(left: 6),
                width: _currentBannerIndex == index ? 24 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentBannerIndex == index
                      ? AppColors.primary
                      : Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.textDark,
          letterSpacing: -0.5,
        ),
      ),
    );
  }

  Widget _buildCategories() {
    final categories = [
      {
        'icon': Icons.cake_outlined,
        'label': 'Sinh Nhật',
        'color': Colors.pink.shade50,
      },
      {
        'icon': Icons.favorite_border,
        'label': 'Tình Yêu',
        'color': Colors.red.shade50,
      },
      {
        'icon': Icons.card_giftcard,
        'label': 'Cảm Ơn',
        'color': Colors.blue.shade50,
      },
      {
        'icon': Icons.business_center_outlined,
        'label': 'Đối Tác',
        'color': Colors.amber.shade50,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: categories.map((cat) {
          return Column(
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: cat['color'] as Color,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  cat['icon'] as IconData,
                  color: AppColors.primary,
                  size: 28,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                cat['label'] as String,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textDark,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildHorizontalGifts() {
    final mockGifts = [
      {
        'title': 'Set Mùa Xuân',
        'price': '499.000đ',
        'image':
            'https://images.unsplash.com/photo-1549465220-1a8b9238cd48?q=50&w=300&auto=format&fit=crop',
      },
      {
        'title': 'Hộp Tri Ân',
        'price': '650.000đ',
        'image':
            'https://images.unsplash.com/photo-1512909006721-3d6018887383?q=50&w=300&auto=format&fit=crop',
      },
      {
        'title': 'Gift Tình Yêu',
        'price': '890.000đ',
        'image':
            'https://images.unsplash.com/photo-1513201099705-a9746e1e201f?q=50&w=300&auto=format&fit=crop',
      },
    ];

    return SizedBox(
      height: 260,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: mockGifts.length,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final gift = mockGifts[index];
          return Container(
            width: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.network(
                    gift['image']!,
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Container(color: Colors.grey.shade200),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gift['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColors.textDark,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        gift['price']!,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildGridGifts() {
    final mockGrid = [
      {
        'title': 'Chocolate Box',
        'price': '350.000đ',
        'image':
            'https://images.unsplash.com/photo-1548883354-94cb0eaed0c8?q=50&w=300&auto=format&fit=crop',
      },
      {
        'title': 'Nến Thơm Scent',
        'price': '290.000đ',
        'image':
            'https://images.unsplash.com/photo-1602928308529-ee8af2ce7cc6?q=50&w=300&auto=format&fit=crop',
      },
      {
        'title': 'Hoa Khô Vintage',
        'price': '420.000đ',
        'image':
            'https://images.unsplash.com/photo-1563241527-200ecf8ee46e?q=50&w=300&auto=format&fit=crop',
      },
      {
        'title': 'Ly Sứ Cao Cấp',
        'price': '199.000đ',
        'image':
            'https://images.unsplash.com/photo-1514330664426-edfd87e31fb0?q=50&w=300&auto=format&fit=crop',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: mockGrid.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final gift = mockGrid[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.border.withOpacity(0.5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    child: Image.network(
                      gift['image']!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Container(color: Colors.grey.shade200),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gift['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColors.textDark,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        gift['price']!,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
