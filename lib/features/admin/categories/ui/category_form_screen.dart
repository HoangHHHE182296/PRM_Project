import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prm_project/features/admin/services/category_service.dart';
import 'package:public_openapi/public_openapi.dart';

class CategoryFormScreen extends StatefulWidget {
  final String? categoryId;

  const CategoryFormScreen({super.key, this.categoryId});

  @override
  State<CategoryFormScreen> createState() => _CategoryFormScreenState();
}

class _CategoryFormScreenState extends State<CategoryFormScreen> {
  final CategoryService _categoryService = CategoryService();
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _imageUrlController;

  ProductType _selectedProductType = ProductType.component;
  String? _parentCategoryId;

  bool _isLoading = false;
  bool _isLoadingCategory = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _imageUrlController = TextEditingController();

    if (widget.categoryId != null) {
      _loadCategory();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _imageUrlController.dispose();
    super.dispose();
  }

  Future<void> _loadCategory() async {
    setState(() => _isLoadingCategory = true);

    try {
      final category = await _categoryService.getCategoryById(
        widget.categoryId!,
      );
      if (!mounted) return;

      setState(() {
        _nameController.text = category?.name ?? '';
        _descriptionController.text = category?.description ?? '';
        _imageUrlController.text = category?.imageUrl ?? '';
        _selectedProductType =
            category?.supportedProductType ?? ProductType.component;
        _parentCategoryId = category?.parentId;
        _isLoadingCategory = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoadingCategory = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      if (widget.categoryId == null) {
        await _categoryService.createCategory(
          name: _nameController.text,
          description: _descriptionController.text,
          imageUrl: _imageUrlController.text,
          supportedProductType: _selectedProductType,
        );

        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tạo danh mục thành công')),
        );
        context.pop();
      } else {
        await _categoryService.updateCategory(
          id: widget.categoryId!,
          name: _nameController.text,
          description: _descriptionController.text,
          imageUrl: _imageUrlController.text,
          supportedProductType: _selectedProductType,
          parentCategoryId: _parentCategoryId,
        );

        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Cập nhật danh mục thành công')),
        );
        context.pop();
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_humanizeError(e))));
      setState(() => _isLoading = false);
    }
  }

  String _humanizeError(Object error) {
    final text = error.toString();
    return text.replaceFirst('Exception: ', '').trim();
  }

  String _productTypeLabel(ProductType t) {
    switch (t) {
      case ProductType.component:
        return 'Component';
      case ProductType.baseBox:
        return 'BaseBox';
      case ProductType.giftSet:
        return 'GiftSet';
    }
    // ignore: dead_code
    return t.name;
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoadingCategory) {
      return Scaffold(
        appBar: AppBar(title: const Text('Đang tải...')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.categoryId == null ? 'Tạo danh mục mới' : 'Chỉnh sửa danh mục',
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Tên danh mục *',
                hintText: 'Nhập tên danh mục',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Vui lòng nhập tên danh mục';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Mô tả',
                hintText: 'Nhập mô tả',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _imageUrlController,
              decoration: const InputDecoration(
                labelText: 'Image URL',
                hintText: 'https://...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<ProductType>(
              value: _selectedProductType,
              decoration: const InputDecoration(
                labelText: 'Loại sản phẩm *',
                border: OutlineInputBorder(),
              ),
              items: ProductType.values
                  .map(
                    (t) => DropdownMenuItem<ProductType>(
                      value: t,
                      child: Text(_productTypeLabel(t)),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value == null) return;
                setState(() => _selectedProductType = value);
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _isLoading ? null : _submitForm,
              child: _isLoading
                  ? const SizedBox(
                      height: 18,
                      width: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(
                      widget.categoryId == null
                          ? 'Tạo danh mục'
                          : 'Cập nhật danh mục',
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
