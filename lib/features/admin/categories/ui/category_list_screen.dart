import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prm_project/features/admin/services/category_service.dart';
import 'package:public_openapi/public_openapi.dart';

enum CategoryTypeFilter { all, component, baseBox, giftSet }

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen>
    with WidgetsBindingObserver {
  final CategoryService _categoryService = CategoryService();
  final TextEditingController _searchController = TextEditingController();

  bool _isLoading = false;
  String? _errorMessage;
  List<CategorySummaryResponse> _categories = [];
  CategoryTypeFilter _typeFilter = CategoryTypeFilter.all;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _fetchCategories();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _searchController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _fetchCategories();
    }
  }

  Future<void> _fetchCategories() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final data = await _categoryService.getCategories(
        type: _toProductType(_typeFilter),
        search: _searchController.text,
        pageNumber: 1,
        pageSize: 50,
      );

      if (!mounted) return;
      setState(() {
        _categories = data;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _deleteCategory(String id) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Xác nhận xóa'),
        content: const Text('Bạn có chắc chắn muốn xóa danh mục này không?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Hủy'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Xóa'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    try {
      await _categoryService.deleteCategory(id);
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Xóa danh mục thành công')));
      _fetchCategories();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quản lý Danh mục')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Tìm kiếm danh mục...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {});
                          _fetchCategories();
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (_) => setState(() {}),
              onSubmitted: (_) => _fetchCategories(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ChoiceChip(
                  label: const Text('Tất cả'),
                  selected: _typeFilter == CategoryTypeFilter.all,
                  onSelected: (_) {
                    setState(() => _typeFilter = CategoryTypeFilter.all);
                    _fetchCategories();
                  },
                ),
                ChoiceChip(
                  label: const Text('Component'),
                  selected: _typeFilter == CategoryTypeFilter.component,
                  onSelected: (_) {
                    setState(() => _typeFilter = CategoryTypeFilter.component);
                    _fetchCategories();
                  },
                ),
                ChoiceChip(
                  label: const Text('BaseBox'),
                  selected: _typeFilter == CategoryTypeFilter.baseBox,
                  onSelected: (_) {
                    setState(() => _typeFilter = CategoryTypeFilter.baseBox);
                    _fetchCategories();
                  },
                ),
                ChoiceChip(
                  label: const Text('GiftSet'),
                  selected: _typeFilter == CategoryTypeFilter.giftSet,
                  onSelected: (_) {
                    setState(() => _typeFilter = CategoryTypeFilter.giftSet);
                    _fetchCategories();
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
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
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _categories.isEmpty
                ? const Center(child: Text('Không có danh mục nào'))
                : RefreshIndicator(
                    onRefresh: _fetchCategories,
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: _categories.length,
                      itemBuilder: (context, index) {
                        final c = _categories[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: ListTile(
                            leading:
                                (c.imageUrl != null && c.imageUrl!.isNotEmpty)
                                ? Image.network(
                                    c.imageUrl!,
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  )
                                : const Icon(Icons.category_outlined),
                            title: Text(
                              c.name ?? '—',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              _buildSubtitle(c),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: PopupMenuButton<String>(
                              onSelected: (value) async {
                                final id = c.id;
                                if (id == null || id.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Danh mục không hợp lệ (thiếu id).',
                                      ),
                                    ),
                                  );
                                  return;
                                }
                                if (value == 'edit') {
                                  await context.push(
                                    '/manage/categories/edit/$id',
                                  );
                                  if (!mounted) return;
                                  _fetchCategories();
                                } else if (value == 'delete') {
                                  _deleteCategory(id);
                                }
                              },
                              itemBuilder: (context) => const [
                                PopupMenuItem(
                                  value: 'edit',
                                  child: Text('Chỉnh sửa'),
                                ),
                                PopupMenuItem(
                                  value: 'delete',
                                  child: Text('Xóa'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/manage/categories/create');
          if (!mounted) return;
          _fetchCategories();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  String _buildSubtitle(CategorySummaryResponse c) {
    final desc = c.description ?? '';
    final type = _productTypeLabel(c.supportedProductType);
    if (desc.isEmpty) {
      return 'Loại: $type';
    }
    return '$desc • Loại: $type';
  }

  ProductType? _toProductType(CategoryTypeFilter filter) {
    switch (filter) {
      case CategoryTypeFilter.component:
        return ProductType.component;
      case CategoryTypeFilter.baseBox:
        return ProductType.baseBox;
      case CategoryTypeFilter.giftSet:
        return ProductType.giftSet;
      case CategoryTypeFilter.all:
        return null;
    }
  }

  String _productTypeLabel(ProductType? type) {
    switch (type) {
      case ProductType.component:
        return 'Component';
      case ProductType.baseBox:
        return 'BaseBox';
      case ProductType.giftSet:
        return 'GiftSet';
      case null:
        return 'Không xác định';
    }

    return type.name;
  }
}
