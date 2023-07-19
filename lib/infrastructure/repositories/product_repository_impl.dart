import 'package:home_depot/domain/entities/produc.dart';
import 'package:home_depot/domain/repositories/products_repository.dart';

class ProductRepositoryImpl extends ProductsRepository {
  final ProductsRepository datasource;

  ProductRepositoryImpl(this.datasource);

  @override
  Future<List<Product>> getProductsThumbnail({int page = 1}) {
    return datasource.getProductsThumbnail(page: page);
  }

}