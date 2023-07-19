import 'package:dio/dio.dart';
import 'package:home_depot/api/response.dart';
import 'package:home_depot/config/environments/environment.dart';
import 'package:home_depot/domain/datasources/products_datasource.dart';
import 'package:home_depot/domain/entities/produc.dart';
import 'package:home_depot/infrastructure/mappers/product_mappers.dart';
import 'package:home_depot/infrastructure/models/product/product_response.dart';

class ProductapiDataSource extends ProductsDataSource {
  final dio =
      Dio(BaseOptions(baseUrl: Environment.serverBaseUrl, queryParameters: {
    'api_key': Environment.serverKeyWord,
  }));

  @override
  Future<List<Product>> getProductsThumbnail({int page = 1}) async {
    Future.delayed(const Duration(seconds: 2));
    final response = await getJSONResponse('mock/products.json');
    final productApiResponse = ProductApiResponse.fromJson(response);
    final List<Product> products = productApiResponse.products
        .map((productapi) => ProductMapper.productApiToEntity(productapi))
        .toList();

    return products;
  }
}
