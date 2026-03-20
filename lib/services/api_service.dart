import 'package:dio/dio.dart';
import 'package:prm_project/environments/environment.dart';
import 'package:public_openapi/public_openapi.dart';

class ApiService {
  static final PublicOpenapi client = PublicOpenapi(
    dio: Dio(BaseOptions(
      baseUrl: Environment.apiUrl,
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
    )),
    basePathOverride: Environment.apiUrl,
  );
}
