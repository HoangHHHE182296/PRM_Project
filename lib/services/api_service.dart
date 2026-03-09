import 'package:prm_project/environments/environment.dart';
import 'package:public_openapi/public_openapi.dart';

class ApiService {
  static final PublicOpenapi client = PublicOpenapi(
    basePathOverride: Environment.apiUrl,
  );
}
