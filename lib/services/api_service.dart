import 'package:prm_project/environments/environment.dart';
import 'package:openapi/openapi.dart';

class ApiService {
  static final Openapi client = Openapi(basePathOverride: Environment.apiUrl);
}
