import 'package:test/test.dart';
import 'package:public_openapi/public_openapi.dart';


/// tests for HealthCheckApi
void main() {
  final instance = PublicOpenapi().getHealthCheckApi();

  group(HealthCheckApi, () {
    //Future apiHealthCheckGet() async
    test('test apiHealthCheckGet', () async {
      // TODO
    });

  });
}
