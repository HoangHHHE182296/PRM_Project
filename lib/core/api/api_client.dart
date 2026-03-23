import 'package:dio/dio.dart';
import 'package:prm_project/core/configs/environment.dart';
import 'package:public_openapi/public_openapi.dart';

class ApiClient {
  static final PublicOpenapi openApi = _createOpenApi();

  static PublicOpenapi _createOpenApi() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Environment.apiUrl,
        connectTimeout: const Duration(milliseconds: 30000),
        receiveTimeout: const Duration(milliseconds: 30000),
      ),
    );

    return PublicOpenapi(
      dio: dio,
      basePathOverride: Environment.apiUrl,
    );
  }
}
