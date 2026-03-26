import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:management_openapi/management_openapi.dart';
import 'package:prm_project/core/api/api_client.dart';
import 'package:prm_project/shared/theme/app_colors.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Simple data classes for local state
// ─────────────────────────────────────────────────────────────────────────────

class _Category {
  final String id;
  final String name;
  final ProductType? supportedType;
  _Category({required this.id, required this.name, this.supportedType});
}

class _Product {
  final String id;
  final String name;
  final double? price;
  _Product({required this.id, required this.name, this.price});
}

class _GiftSetItemEntry {
  final _Product component;
  int quantity;
  _GiftSetItemEntry({required this.component, required this.quantity});
}

// ─────────────────────────────────────────────────────────────────────────────
// Screen widget
// ─────────────────────────────────────────────────────────────────────────────

class ManageProductFormScreen extends StatefulWidget {
  final String? productId; // If null, create new; else, update.
  const ManageProductFormScreen({super.key, this.productId});

  @override
  State<ManageProductFormScreen> createState() => _ManageProductFormScreenState();
}

class _ManageProductFormScreenState extends State<ManageProductFormScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isSubmitting = false;

  // ── Core fields ──
  final _nameCtrl = TextEditingController();
  final _skuCtrl = TextEditingController();
  final _priceCtrl = TextEditingController(text: '0');
  final _stockCtrl = TextEditingController(text: '0');
  final _lowStockCtrl = TextEditingController(text: '5');
  final _descCtrl = TextEditingController();

  ProductType _productType = ProductType.component;
  String? _selectedCategoryId;

  // ── Dropdown data ──
  List<_Category> _categories = [];
  bool _loadingCategories = false;
  bool _isLoadingProduct = false;

  // ── GiftSet data ──
  List<_Product> _availableBaseBoxes = [];
  List<_Product> _availableComponents = [];
  String? _selectedBaseBoxId;
  double? _selectedBaseBoxPrice;
  List<_GiftSetItemEntry> _giftSetItems = [];
  bool _loadingGiftSetData = false;

  final _currencyFormat = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ', decimalDigits: 0);

  // ─────────────────────────────────────────────────────────────────────────
  // Lifecycle
  // ─────────────────────────────────────────────────────────────────────────

  @override
  void initState() {
    super.initState();
    _initData();
  }

  Future<void> _initData() async {
    await _fetchCategories();
    if (widget.productId != null) {
      await _fetchProductDetails();
    }
  }

  Future<void> _fetchProductDetails() async {
    if (!mounted) return;
    setState(() => _isLoadingProduct = true);

    try {
      final res = await ApiClient.managementApi.getProductApi().apiProductsGetProductDetailIdGet(id: widget.productId!);
      final data = res.data?.data;
      if (data != null) {
        _nameCtrl.text = data.name ?? '';
        _skuCtrl.text = data.sku ?? '';
        _priceCtrl.text = _currencyFormat.format(data.price ?? 0).replaceAll('đ', '').trim();
        _stockCtrl.text = data.stockQuantity?.toString() ?? '0';
        _lowStockCtrl.text = data.lowStockThreshold?.toString() ?? '5';
        _descCtrl.text = data.description ?? '';

        final typeName = data.typeName ?? '';
        if (typeName.toLowerCase().contains('component'))
          _productType = ProductType.component;
        else if (typeName.toLowerCase().contains('basebox'))
          _productType = ProductType.baseBox;
        else if (typeName.toLowerCase().contains('giftset'))
          _productType = ProductType.giftSet;

        // Ensure the fetched category matches the product type restrictions in the UI
        if (_categories.any((c) => c.id == data.categoryId && (c.supportedType == null || c.supportedType == _productType))) {
          _selectedCategoryId = data.categoryId;
        }

        if (_productType == ProductType.giftSet) {
          await _fetchGiftSetData(); // Need components to map existing items
          _selectedBaseBoxId = data.includedItems?.baseBoxId;
          _selectedBaseBoxPrice = _availableBaseBoxes.where((b) => b.id == _selectedBaseBoxId).firstOrNull?.price;

          final items = data.includedItems?.items;
          if (items != null) {
            _giftSetItems = items.map((i) {
              final comp = _availableComponents.firstWhere(
                (c) => c.id == i.componentId,
                orElse: () => _Product(id: i.componentId ?? '', name: i.componentName ?? 'Sản phẩm ẩn', price: 0),
              );
              return _GiftSetItemEntry(component: comp, quantity: i.quantity ?? 1);
            }).toList();
          }
        }
      }
    } catch (e) {
      if (mounted) _showError('Không thể tải thông tin sản phẩm: $e');
    } finally {
      if (mounted) setState(() => _isLoadingProduct = false);
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _skuCtrl.dispose();
    _priceCtrl.dispose();
    _stockCtrl.dispose();
    _lowStockCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Data fetching
  // ─────────────────────────────────────────────────────────────────────────

  Future<void> _fetchCategories() async {
    if (!mounted) return;
    setState(() => _loadingCategories = true);
    try {
      final res = await ApiClient.openApi.dio.get('/api/categories/get-categories');
      final json = res.data;
      if (json is Map && json['success'] == true) {
        final dynamic data = json['data'];
        List rawList = [];
        if (data is List) {
          rawList = data;
        } else if (data is Map) {
          rawList = data['data'] ?? data['items'] ?? [];
        }
        setState(() {
          _categories = rawList.map((e) {
            ProductType? type;
            final typeStr = e['supportedProductType']?.toString();
            if (typeStr != null) {
              if (typeStr == 'Component')
                type = ProductType.component;
              else if (typeStr == 'BaseBox')
                type = ProductType.baseBox;
              else if (typeStr == 'GiftSet')
                type = ProductType.giftSet;
            }
            return _Category(id: e['id']?.toString() ?? '', name: e['name']?.toString() ?? '', supportedType: type);
          }).toList();
        });
      }
    } catch (e) {
      debugPrint('Error fetching categories: $e');
    } finally {
      if (mounted) setState(() => _loadingCategories = false);
    }
  }

  Future<void> _fetchGiftSetData() async {
    if (!mounted) return;
    setState(() => _loadingGiftSetData = true);
    try {
      final results = await Future.wait([
        ApiClient.openApi.dio.get('/api/products/get-product-list', queryParameters: {'Type': 'BaseBox', 'PageSize': 100}),
        ApiClient.openApi.dio.get('/api/products/get-product-list', queryParameters: {'Type': 'Component', 'PageSize': 100}),
      ]);

      List<_Product> parseProducts(Response res) {
        final json = res.data;
        if (json is Map && json['success'] == true) {
          final dynamic data = json['data'];
          List rawList = [];
          if (data is List) {
            rawList = data;
          } else if (data is Map) {
            rawList = data['data'] ?? data['items'] ?? [];
          }
          return rawList
              .map((e) => _Product(id: e['id']?.toString() ?? '', name: e['name']?.toString() ?? '', price: (e['price'] as num?)?.toDouble()))
              .toList();
        }
        return [];
      }

      setState(() {
        _availableBaseBoxes = parseProducts(results[0]);
        _availableComponents = parseProducts(results[1]);
      });
    } catch (e) {
      // Ignored or handled elsewhere
    } finally {
      if (mounted) setState(() => _loadingGiftSetData = false);
    }
  }

  // ─────────────────────────────────────────────────────────────────────────
  // GiftSet helpers
  // ─────────────────────────────────────────────────────────────────────────

  double get _calculatedGiftSetPrice {
    double total = _selectedBaseBoxPrice ?? 0;
    for (final item in _giftSetItems) {
      total += (item.component.price ?? 0) * item.quantity;
    }
    return total;
  }

  void _updateGiftSetPrice() {
    if (_productType == ProductType.giftSet) {
      _priceCtrl.text = _calculatedGiftSetPrice.toStringAsFixed(0);
    }
  }

  void _openAddComponentSheet() {
    final alreadySelectedIds = _giftSetItems.map((e) => e.component.id).toSet();
    final available = _availableComponents.where((c) => !alreadySelectedIds.contains(c.id)).toList();

    if (available.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Không còn thành phần nào để thêm.')));
      return;
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (ctx) {
        return DraggableScrollableSheet(
          initialChildSize: 0.55,
          minChildSize: 0.4,
          maxChildSize: 0.85,
          expand: false,
          builder: (_, scrollCtrl) {
            return Column(
              children: [
                const SizedBox(height: 8),
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(2)),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Text('Chọn thành phần', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const Spacer(),
                      IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(ctx)),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: ListView.builder(
                    controller: scrollCtrl,
                    itemCount: available.length,
                    itemBuilder: (_, i) {
                      final comp = available[i];
                      return ListTile(
                        title: Text(comp.name),
                        subtitle: Text(comp.price != null ? _currencyFormat.format(comp.price) : 'Liên hệ'),
                        trailing: FilledButton(
                          style: FilledButton.styleFrom(backgroundColor: AppColors.primary, padding: const EdgeInsets.symmetric(horizontal: 14)),
                          onPressed: () {
                            Navigator.pop(ctx);
                            setState(() {
                              _giftSetItems.add(_GiftSetItemEntry(component: comp, quantity: 1));
                              _updateGiftSetPrice();
                            });
                          },
                          child: const Text('Thêm'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Submit
  // ─────────────────────────────────────────────────────────────────────────

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    // Extra validations
    if (_productType == ProductType.giftSet) {
      if (_selectedBaseBoxId == null) {
        _showError('Vui lòng chọn Hộp (BaseBox) cho Bộ quà tặng.');
        return;
      }
      if (_giftSetItems.isEmpty) {
        _showError('Vui lòng thêm ít nhất một Thành phần cho Bộ quà tặng.');
        return;
      }
    }

    setState(() => _isSubmitting = true);

    try {
      // Map local gift set items to generated GiftSetItem model
      ListBuilder<GiftSetItem>? giftSetItemsList;
      if (_productType == ProductType.giftSet) {
        giftSetItemsList = ListBuilder<GiftSetItem>();
        for (final item in _giftSetItems) {
          giftSetItemsList.add(
            GiftSetItem(
              (b) => b
                ..componentId = item.component.id
                ..quantity = item.quantity,
            ),
          );
        }
      }

      final api = ApiClient.managementApi.getProductApi();
      final pName = _nameCtrl.text.trim();
      final pSku = _skuCtrl.text.trim();
      final pPrice = double.tryParse(_priceCtrl.text.replaceAll('.', '').replaceAll(',', '')) ?? 0;
      final pDesc = _descCtrl.text.trim().isNotEmpty ? _descCtrl.text.trim() : null;
      final pStock = int.tryParse(_stockCtrl.text) ?? 0;
      final pLowStock = int.tryParse(_lowStockCtrl.text) ?? 5;
      final pBaseBox = _productType == ProductType.giftSet ? _selectedBaseBoxId : null;

      Response<dynamic>? res;
      if (widget.productId == null) {
        res = await api.apiProductsCreateProductPost(
          name: pName,
          SKU: pSku,
          price: pPrice,
          description: pDesc,
          productType: _productType,
          categoryId: _selectedCategoryId,
          stockQuantity: pStock,
          lowStockThreshold: pLowStock,
          baseBoxId: pBaseBox,
          giftSetItems: giftSetItemsList?.build(),
        );
      } else {
        res = await api.apiProductsUpdateProductIdPut(
          id: widget.productId!,
          id2: widget.productId!,
          name: pName,
          SKU: pSku,
          price: pPrice,
          description: pDesc,
          productType: _productType,
          categoryId: _selectedCategoryId,
          stockQuantity: pStock,
          lowStockThreshold: pLowStock,
          baseBoxId: pBaseBox,
          giftSetItems: giftSetItemsList?.build(),
        );
      }

      if (res.data?.success == true) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(widget.productId == null ? 'Tạo sản phẩm thành công!' : 'Cập nhật sản phẩm thành công!'),
              backgroundColor: Colors.green[600],
            ),
          );
          Navigator.pop(context, true);
        }
      } else {
        _showError(res.data?.message ?? (widget.productId == null ? 'Tạo sản phẩm thất bại.' : 'Cập nhật thất bại.'));
      }
    } on DioException catch (e) {
      final dynamic errorData = e.response?.data;
      String errorMsg = 'Lỗi không xác định';

      if (errorData is Map) {
        errorMsg = errorData['message']?.toString() ?? errorData['title']?.toString() ?? errorMsg;
        // If there are validation errors, append them
        if (errorData['errors'] is Map) {
          final errors = errorData['errors'] as Map;
          final details = errors.entries.map((e) => '${e.key}: ${e.value}').join('\n');
          errorMsg += '\n$details';
        }
      } else if (e.message != null) {
        errorMsg = e.message!;
      }

      _showError(errorMsg);
    } catch (e) {
      _showError('Lỗi: $e');
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  void _showError(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red[700]));
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Build
  // ─────────────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productId == null ? 'Thêm Mới Sản Phẩm' : 'Cập Nhật Sản Phẩm'),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: _isSubmitting
                ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2.5))
                : FilledButton(
                    onPressed: _isLoadingProduct ? null : _submit,
                    style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
                    child: const Text('Lưu lại'),
                  ),
          ),
        ],
      ),
      body: _isLoadingProduct
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                children: [
                  _sectionCard(
                    children: [
                      // 1. Tên Sản Phẩm
                      _buildField(
                        label: 'Tên sản phẩm *',
                        child: TextFormField(
                          controller: _nameCtrl,
                          decoration: _inputDeco(hint: 'VD: Hộp Trái Tim Hồng...'),
                          validator: (v) => (v == null || v.trim().isEmpty) ? 'Bắt buộc' : null,
                        ),
                      ),
                      const SizedBox(height: 12),
                      // 2. Mã SKU
                      _buildField(
                        label: 'Mã SKU *',
                        child: TextFormField(
                          controller: _skuCtrl,
                          decoration: _inputDeco(hint: 'VD: SP-001...'),
                          validator: (v) => (v == null || v.trim().isEmpty) ? 'Bắt buộc' : null,
                        ),
                      ),
                      const SizedBox(height: 12),
                      // 3. Phân loại, Danh mục con
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: _buildField(
                              label: 'Phân loại (Type) *',
                              child: DropdownButtonFormField<ProductType>(
                                initialValue: _productType,
                                decoration: _inputDeco(),
                                isExpanded: true,
                                items: const [
                                  DropdownMenuItem(value: ProductType.component, child: Text('Thành phần')),
                                  DropdownMenuItem(value: ProductType.baseBox, child: Text('Hộp cơ bản')),
                                  DropdownMenuItem(value: ProductType.giftSet, child: Text('Bộ quà tặng')),
                                ],
                                onChanged: (val) async {
                                  if (val == null) return;
                                  setState(() {
                                    _productType = val;
                                    _selectedBaseBoxId = null;
                                    _selectedBaseBoxPrice = null;
                                    _giftSetItems = [];
                                  });
                                  if (val == ProductType.giftSet && _availableBaseBoxes.isEmpty) {
                                    await _fetchGiftSetData();
                                  }
                                  _updateGiftSetPrice();
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildField(
                              label: 'Danh mục con',
                              child: _loadingCategories
                                  ? const LinearProgressIndicator()
                                  : DropdownButtonFormField<String?>(
                                      value: _selectedCategoryId,
                                      decoration: _inputDeco(hint: 'Chọn danh mục'),
                                      isExpanded: true,
                                      items: [
                                        const DropdownMenuItem<String?>(value: null, child: Text('-- Không chọn --')),
                                        ..._categories
                                            .where((c) => c.supportedType == null || c.supportedType == _productType)
                                            .map(
                                              (c) => DropdownMenuItem<String?>(
                                                value: c.id,
                                                child: Text(c.name, overflow: TextOverflow.ellipsis),
                                              ),
                                            ),
                                      ],
                                      onChanged: (val) => setState(() => _selectedCategoryId = val),
                                    ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      // 4. Giá bán
                      _buildField(
                        label: 'Giá bán (VNĐ) *',
                        labelSuffix: _productType == ProductType.giftSet
                            ? Text(
                                ' — tự tính tổng',
                                style: TextStyle(fontSize: 11, color: AppColors.primary, fontStyle: FontStyle.italic),
                              )
                            : null,
                        child: TextFormField(
                          controller: _priceCtrl,
                          enabled: _productType != ProductType.giftSet,
                          keyboardType: TextInputType.number,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          decoration: _inputDeco(hint: '0'),
                          validator: (v) {
                            if (_productType == ProductType.giftSet) return null;
                            if (v == null || v.trim().isEmpty) return 'Bắt buộc';
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 12),
                      // 5. Tồn kho, Cảnh báo thấp
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: _buildField(
                              label: 'Tồn kho *',
                              child: TextFormField(
                                controller: _stockCtrl,
                                keyboardType: TextInputType.number,
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                decoration: _inputDeco(hint: '0'),
                                validator: (v) => (v == null || v.trim().isEmpty) ? 'Bắt buộc' : null,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildField(
                              label: 'Cảnh báo thấp',
                              child: TextFormField(
                                controller: _lowStockCtrl,
                                keyboardType: TextInputType.number,
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                decoration: _inputDeco(hint: '5'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      // 6. Mô tả chi tiết
                      _buildField(
                        label: 'Mô tả chi tiết',
                        child: TextFormField(
                          controller: _descCtrl,
                          maxLines: 4,
                          decoration: _inputDeco(hint: 'Nhập mô tả...'),
                        ),
                      ),
                    ],
                  ),

                  // ── GiftSet Config Card ──────────────────────────────────────
                  if (_productType == ProductType.giftSet) ...[
                    const SizedBox(height: 16),
                    _loadingGiftSetData
                        ? const Center(child: CircularProgressIndicator())
                        : _sectionCard(
                            headerIcon: Icons.card_giftcard_rounded,
                            headerTitle: 'Cấu hình Bộ Quà Tặng',
                            children: [
                              _buildField(
                                label: 'Chọn Hộp (BaseBox) *',
                                child: DropdownButtonFormField<String?>(
                                  initialValue: _selectedBaseBoxId,
                                  decoration: _inputDeco(hint: 'Chọn hộp cho bộ quà tặng'),
                                  isExpanded: true,
                                  items: [
                                    const DropdownMenuItem<String?>(value: null, child: Text('-- Chọn hộp --')),
                                    ..._availableBaseBoxes.map(
                                      (b) => DropdownMenuItem<String?>(
                                        value: b.id,
                                        child: Text(b.name, overflow: TextOverflow.ellipsis),
                                      ),
                                    ),
                                  ],
                                  onChanged: (val) {
                                    setState(() {
                                      _selectedBaseBoxId = val;
                                      _selectedBaseBoxPrice = _availableBaseBoxes.where((b) => b.id == val).firstOrNull?.price;
                                    });
                                    _updateGiftSetPrice();
                                  },
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Text('Thành phần trong bộ', style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600)),
                                  const Spacer(),
                                  OutlinedButton.icon(
                                    onPressed: _openAddComponentSheet,
                                    icon: const Icon(Icons.add, size: 16),
                                    label: const Text('Thêm thành phần'),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: AppColors.primary,
                                      side: BorderSide(color: AppColors.primary),
                                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              if (_giftSetItems.isEmpty)
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(24),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    border: Border.all(color: Colors.grey[200]!),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Column(
                                    children: [
                                      Icon(Icons.inventory_2_outlined, color: Colors.grey, size: 36),
                                      SizedBox(height: 8),
                                      Text(
                                        'Chưa có thành phần nào.\nBấm "Thêm thành phần" để bắt đầu.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                )
                              else
                                Column(
                                  children: [
                                    for (final item in _giftSetItems)
                                      Card(
                                        elevation: 0,
                                        color: Colors.grey[50],
                                        margin: const EdgeInsets.only(bottom: 6),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          side: BorderSide(color: Colors.grey[200]!),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                          child: Row(
                                            children: [
                                              const Icon(Icons.widgets_outlined, size: 18, color: Colors.grey),
                                              const SizedBox(width: 8),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(item.component.name, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                                                    if (item.component.price != null)
                                                      Text(
                                                        _currencyFormat.format(item.component.price),
                                                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              // Quantity stepper
                                              Row(
                                                children: [
                                                  _quantityBtn(
                                                    icon: Icons.remove,
                                                    onTap: () {
                                                      if (item.quantity > 1) {
                                                        setState(() => item.quantity--);
                                                        _updateGiftSetPrice();
                                                      }
                                                    },
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                    child: Text('${item.quantity}', style: const TextStyle(fontWeight: FontWeight.bold)),
                                                  ),
                                                  _quantityBtn(
                                                    icon: Icons.add,
                                                    onTap: () {
                                                      setState(() => item.quantity++);
                                                      _updateGiftSetPrice();
                                                    },
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(width: 4),
                                              IconButton(
                                                icon: const Icon(Icons.close, size: 18),
                                                color: Colors.red[400],
                                                onPressed: () {
                                                  setState(() => _giftSetItems.remove(item));
                                                  _updateGiftSetPrice();
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    // Price total row
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          const Text('Tổng giá: ', style: TextStyle(fontWeight: FontWeight.w500)),
                                          Text(
                                            _currencyFormat.format(_calculatedGiftSetPrice),
                                            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                  ],

                  // ── Image Placeholder Card ───────────────────────────────────
                  const SizedBox(height: 16),
                  _sectionCard(
                    headerTitle: 'Hình ảnh sản phẩm',
                    children: [
                      Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.grey[200]!, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_photo_alternate_outlined, size: 40, color: Colors.grey[400]),
                            const SizedBox(height: 8),
                            Text('Chức năng tải ảnh sẽ sớm được bổ sung', style: TextStyle(color: Colors.grey[500], fontSize: 13)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Widget helpers
  // ─────────────────────────────────────────────────────────────────────────

  InputDecoration _inputDeco({String? hint}) => InputDecoration(
    hintText: hint,
    isDense: true,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
  );

  Widget _buildField({required String label, required Widget child, Widget? labelSuffix}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black87),
            ),
            ?labelSuffix,
          ],
        ),
        const SizedBox(height: 4),
        child,
      ],
    );
  }

  Widget _sectionCard({IconData? headerIcon, String? headerTitle, required List<Widget> children}) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (headerTitle != null) ...[
              Row(
                children: [
                  if (headerIcon != null) ...[Icon(headerIcon, color: AppColors.primary, size: 20), const SizedBox(width: 8)],
                  Text(headerTitle, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
              const Divider(height: 20),
            ],
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _quantityBtn({required IconData icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(icon, size: 16),
      ),
    );
  }
}
