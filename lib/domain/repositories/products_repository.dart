
import 'package:home_depot/domain/entities/produc.dart';

abstract class ProductsRepository {
  Future<List<Product>> getProductsThumbnail({int page = 1});
}   