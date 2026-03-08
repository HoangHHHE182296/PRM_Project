import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PublicProductApi
void main() {
  final instance = Openapi().getPublicProductApi();

  group(PublicProductApi, () {
    //Future<ProductResponsePaginatedListApiSuccessResponse> apiPublicProductsGet({ String searchTerm, String categoryId, String sortOrder, int pageIndex, int pageSize }) async
    test('test apiPublicProductsGet', () async {
      // TODO
    });

  });
}
