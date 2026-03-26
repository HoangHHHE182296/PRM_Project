import 'package:test/test.dart';
import 'package:management_openapi/management_openapi.dart';


/// tests for HealthCheckApi
void main() {
  final instance = ManagementOpenapi().getHealthCheckApi();

  group(HealthCheckApi, () {
    //Future apiHealthCheckGet() async
    test('test apiHealthCheckGet', () async {
      // TODO
    });

  });
}
