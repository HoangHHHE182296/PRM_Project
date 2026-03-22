//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:public_openapi/src/api_util.dart';
import 'package:public_openapi/src/model/api_failure_response.dart';
import 'package:public_openapi/src/model/product_detail_response_api_success_response.dart';
import 'package:public_openapi/src/model/product_list_response_i_enumerable_api_success_response.dart';
import 'package:public_openapi/src/model/product_type.dart';
import 'package:public_openapi/src/model/string_i_enumerable_api_success_response.dart';
import 'package:public_openapi/src/model/theme_collection_dto_i_enumerable_api_success_response.dart';

class ProductApi {

  final Dio _dio;

  final Serializers _serializers;

  const ProductApi(this._dio, this._serializers);

  /// apiProductsGetAvailableTagsCategoryIdGet
  /// 
  ///
  /// Parameters:
  /// * [categoryId] 
  /// * [search] 
  /// * [pageNumber] 
  /// * [pageSize] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [StringIEnumerableApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<StringIEnumerableApiSuccessResponse>> apiProductsGetAvailableTagsCategoryIdGet({ 
    required String categoryId,
    String? search,
    int? pageNumber = 1,
    int? pageSize = 6,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-available-tags/{categoryId}'.replaceAll('{' r'categoryId' '}', encodeQueryParameter(_serializers, categoryId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (pageNumber != null) r'pageNumber': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (pageSize != null) r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    StringIEnumerableApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(StringIEnumerableApiSuccessResponse),
      ) as StringIEnumerableApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<StringIEnumerableApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetAvailableThemesGet
  /// 
  ///
  /// Parameters:
  /// * [search] 
  /// * [pageNumber] 
  /// * [pageSize] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ThemeCollectionDtoIEnumerableApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ThemeCollectionDtoIEnumerableApiSuccessResponse>> apiProductsGetAvailableThemesGet({ 
    String? search,
    int? pageNumber = 1,
    int? pageSize = 6,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-available-themes';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (pageNumber != null) r'pageNumber': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (pageSize != null) r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ThemeCollectionDtoIEnumerableApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ThemeCollectionDtoIEnumerableApiSuccessResponse),
      ) as ThemeCollectionDtoIEnumerableApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ThemeCollectionDtoIEnumerableApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetPublicProductDetailIdGet
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProductDetailResponseApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProductDetailResponseApiSuccessResponse>> apiProductsGetPublicProductDetailIdGet({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-public-product-detail/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProductDetailResponseApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ProductDetailResponseApiSuccessResponse),
      ) as ProductDetailResponseApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProductDetailResponseApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiProductsGetPublicProductListGet
  /// 
  ///
  /// Parameters:
  /// * [type] 
  /// * [categoryId] 
  /// * [search] 
  /// * [minPrice] 
  /// * [maxPrice] 
  /// * [tags] 
  /// * [themeCollectionId] 
  /// * [inStockOnly] 
  /// * [minRating] 
  /// * [sortBy] 
  /// * [sortDescending] 
  /// * [pageNumber] 
  /// * [pageSize] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProductListResponseIEnumerableApiSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProductListResponseIEnumerableApiSuccessResponse>> apiProductsGetPublicProductListGet({ 
    ProductType? type,
    String? categoryId,
    String? search,
    double? minPrice,
    double? maxPrice,
    BuiltList<String>? tags,
    String? themeCollectionId,
    bool? inStockOnly,
    double? minRating,
    String? sortBy,
    bool? sortDescending,
    int? pageNumber,
    int? pageSize,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/products/get-public-product-list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (type != null) r'Type': encodeQueryParameter(_serializers, type, const FullType(ProductType)),
      if (categoryId != null) r'CategoryId': encodeQueryParameter(_serializers, categoryId, const FullType(String)),
      if (search != null) r'Search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (minPrice != null) r'MinPrice': encodeQueryParameter(_serializers, minPrice, const FullType(double)),
      if (maxPrice != null) r'MaxPrice': encodeQueryParameter(_serializers, maxPrice, const FullType(double)),
      if (tags != null) r'Tags': encodeCollectionQueryParameter<String>(_serializers, tags, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (themeCollectionId != null) r'ThemeCollectionId': encodeQueryParameter(_serializers, themeCollectionId, const FullType(String)),
      if (inStockOnly != null) r'InStockOnly': encodeQueryParameter(_serializers, inStockOnly, const FullType(bool)),
      if (minRating != null) r'MinRating': encodeQueryParameter(_serializers, minRating, const FullType(double)),
      if (sortBy != null) r'SortBy': encodeQueryParameter(_serializers, sortBy, const FullType(String)),
      if (sortDescending != null) r'SortDescending': encodeQueryParameter(_serializers, sortDescending, const FullType(bool)),
      if (pageNumber != null) r'PageNumber': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (pageSize != null) r'PageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProductListResponseIEnumerableApiSuccessResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ProductListResponseIEnumerableApiSuccessResponse),
      ) as ProductListResponseIEnumerableApiSuccessResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProductListResponseIEnumerableApiSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
