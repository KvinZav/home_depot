
import 'package:home_depot/domain/entities/produc.dart';

abstract class ProductsDataSource {
  Future<List<Product>> getProductsThumbnail({int page = 1});
}