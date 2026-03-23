import 'package:flutter/material.dart';
import 'package:prm_project/core/api/api_client.dart';
import 'package:prm_project/page/products/product_detail_screen.dart';
import 'package:prm_project/shared/theme/app_colors.dart';
import 'package:public_openapi/public_openapi.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  // Pagination states
  int _pageNumber = 1;
  final int _pageSize = 12;
  bool _isLoading = false;
  bool _hasMore = true;
  List<ProductListResponse> _products = [];
  final ScrollController _scrollController = ScrollController();

  // Filter & Search states
  final TextEditingController _searchController = TextEditingController();
  String? _searchQuery;
  double? _minPrice;
  double? _maxPrice;
  bool? _inStockOnly;
  String? _sortBy;
  bool? _sortDescending;

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

    setState(() {
      _isLoading = true;
    });

    final Map<String, dynamic> queryParams = {
      'PageNumber': _pageNumber,
      'PageSize': _pageSize,
    };
    
    // Vẫn áp dụng filter lên API để tối ưu database
    if (_minPrice != null) queryParams['MinPrice'] = _minPrice;
    if (_maxPrice != null) queryParams['MaxPrice'] = _maxPrice;
    if (_inStockOnly == true) queryParams['InStockOnly'] = true;
    if (_searchQuery != null && _searchQuery!.trim().isNotEmpty) {
      // Gửi cả lên API để filter database trước, phòng khi database quá lớn
      queryParams['Search'] = _searchQuery!.trim();
    }
    
    // Sort
    if (_sortBy == 'price') {
      queryParams['SortBy'] = 'Price';
      queryParams['SortDescending'] = _sortDescending;
    } else if (_sortBy == 'name') {
      queryParams['SortBy'] = 'Name';
      queryParams['SortDescending'] = _sortDescending;
    }

    try {
      final res = await ApiClient.openApi.dio.get(
        '/api/products/get-public-product-list',
        queryParameters: queryParams,
      );
      
      final json = res.data;
      if (json['success'] == true && json['data'] != null) {
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
                  ..categoryName = e['categoryName']?.toString(),
              ),
            )
            .toList();

        // Bổ sung Lọc description client-side (vì API có thể chưa hỗ trợ triệt để mô tả)
        if (_searchQuery != null && _searchQuery!.trim().isNotEmpty) {
          final query = _searchQuery!.trim().toLowerCase();
          parsedList = parsedList.where((p) {
            final matchName = p.name?.toLowerCase().contains(query) ?? false;
            final matchDesc = p.description?.toLowerCase().contains(query) ?? false;
            return matchName || matchDesc;
          }).toList();
        }

        // Bổ sung Sắp xếp client-side (phòng API chưa sort chuẩn)
        if (_sortBy == 'name') {
          parsedList.sort((a, b) {
            final nameA = a.name ?? '';
            final nameB = b.name ?? '';
            return _sortDescending == true ? nameB.compareTo(nameA) : nameA.compareTo(nameB);
          });
        } else if (_sortBy == 'price') {
          parsedList.sort((a, b) {
            final priceA = a.price ?? 0.0;
            final priceB = b.price ?? 0.0;
            return _sortDescending == true ? priceB.compareTo(priceA) : priceA.compareTo(priceB);
          });
        }

        setState(() {
          if (parsedList.isNotEmpty) {
            _products.addAll(parsedList);
            _pageNumber++;
          }
          if (list.length < _pageSize) {
            _hasMore = false; // Đã hết data từ API
          }
        });
      }
    } catch (e) {
      debugPrint("Error fetching products: $e");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Các loại quà tặng'),
        actions: [
          if (_searchQuery?.isNotEmpty == true || _minPrice != null || _maxPrice != null || _inStockOnly != null || _sortBy != null)
            IconButton(
              icon: const Icon(Icons.filter_alt_off),
              color: Colors.red,
              tooltip: 'Xoá tất cả bộ lọc',
              onPressed: () {
                _searchController.clear();
                setState(() {
                  _searchQuery = null;
                  _minPrice = null;
                  _maxPrice = null;
                  _inStockOnly = null;
                  _sortBy = null;
                  _sortDescending = null;
                  _fetchProducts();
                });
              },
            ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar & Filter Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Tìm kiếm tên, mô tả...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        _searchQuery = value;
                        _fetchProducts();
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.filter_list, color: AppColors.primary),
                    tooltip: 'Bộ lọc',
                    onPressed: _showFilterBottomSheet,
                  ),
                ),
              ],
            ),
          ),
          
          // Danh sách sản phẩm
          Expanded(
            child: _products.isEmpty && _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _products.isEmpty
                    ? const Center(child: Text('Không có mục nào.'))
                    : GridView.builder(
                        controller: _scrollController,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                          childAspectRatio: 0.75, // Tỉ lệ khung hình (width/height)
                        ),
                        itemCount: _products.length + (_hasMore ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index == _products.length) {
                            return const Center(child: CircularProgressIndicator());
                          }

                          final product = _products[index];
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
                      ),
          ),
        ],
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

  void _showFilterBottomSheet() {
    // Temporary variables cho filter popup
    double tempMin = _minPrice ?? 0;
    double tempMax = _maxPrice ?? 5000000;
    bool tempInStock = _inStockOnly ?? false;
    String tempSort = 'default';
    if (_sortBy == 'name' && _sortDescending == false) tempSort = 'name_asc';
    if (_sortBy == 'name' && _sortDescending == true) tempSort = 'name_desc';
    if (_sortBy == 'price' && _sortDescending == false) tempSort = 'price_asc';
    if (_sortBy == 'price' && _sortDescending == true) tempSort = 'price_desc';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (context) {
        final TextEditingController minController = TextEditingController(text: tempMin.round().toString());
        final TextEditingController maxController = TextEditingController(text: tempMax.round().toString());

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 16, left: 16, right: 16,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Bộ lọc & Sắp xếp', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(context)),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(height: 8),

                    // Sort By
                    const Text('Sắp xếp theo', style: TextStyle(fontWeight: FontWeight.bold)),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: tempSort,
                      items: const [
                        DropdownMenuItem(value: 'default', child: Text('Mặc định')),
                        DropdownMenuItem(value: 'name_asc', child: Text('Tên (A-Z)')),
                        DropdownMenuItem(value: 'name_desc', child: Text('Tên (Z-A)')),
                        DropdownMenuItem(value: 'price_asc', child: Text('Giá (Thấp đến Cao)')),
                        DropdownMenuItem(value: 'price_desc', child: Text('Giá (Cao xuống Thấp)')),
                      ],
                      onChanged: (val) {
                        if (val != null) {
                          setModalState(() { tempSort = val; });
                        }
                      },
                    ),
                    const SizedBox(height: 16),

                    // Price Range
                    const Text('Khoảng giá (VNĐ)', style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: minController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Từ',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            ),
                            onChanged: (val) {
                              final valDouble = double.tryParse(val);
                              if (valDouble != null && valDouble >= 0 && valDouble <= tempMax) {
                                setModalState(() { tempMin = valDouble; });
                              }
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('-'),
                        ),
                        Expanded(
                          child: TextField(
                            controller: maxController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Đến',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            ),
                            onChanged: (val) {
                              final valDouble = double.tryParse(val);
                              if (valDouble != null && valDouble >= tempMin && valDouble <= 5000000) {
                                setModalState(() { tempMax = valDouble; });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    RangeSlider(
                      values: RangeValues(tempMin, tempMax),
                      min: 0,
                      max: 5000000,
                      divisions: 500,
                      labels: RangeLabels('${tempMin.round()}đ', '${tempMax.round()}đ'),
                      onChanged: (RangeValues values) {
                        setModalState(() {
                          tempMin = values.start;
                          tempMax = values.end;
                          minController.text = tempMin.round().toString();
                          maxController.text = tempMax.round().toString();
                        });
                      },
                    ),
                    const SizedBox(height: 16),

                    // In Stock
                    CheckboxListTile(
                      title: const Text('Chỉ hiện hàng còn trong kho'),
                      value: tempInStock,
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setModalState(() { tempInStock = val ?? false; });
                      },
                    ),
                    const SizedBox(height: 24),

                    // Buttons
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _minPrice = tempMin > 0 ? tempMin : null;
                            _maxPrice = tempMax < 5000000 ? tempMax : null;
                            _inStockOnly = tempInStock ? true : null;

                            switch (tempSort) {
                              case 'name_asc': _sortBy = 'name'; _sortDescending = false; break;
                              case 'name_desc': _sortBy = 'name'; _sortDescending = true; break;
                              case 'price_asc': _sortBy = 'price'; _sortDescending = false; break;
                              case 'price_desc': _sortBy = 'price'; _sortDescending = true; break;
                              default: _sortBy = null; _sortDescending = null; break;
                            }
                            _fetchProducts();
                          });
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text('Áp dụng', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ),
                    const SizedBox(height: 16), // Optional extra space
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
