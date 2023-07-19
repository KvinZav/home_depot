import 'package:home_depot/domain/entities/produc.dart';
import 'package:home_depot/infrastructure/models/product/product_productapi.dart';

class ProductMapper {
  static Product productApiToEntity(ProductProductApi productapi) => Product(
    id: productapi.id,
    name: productapi.name,
    description: productapi.description,
    imageUrl: productapi.imageUrl,
    price: productapi.price,
    rating: productapi.rating,
    unit: productapi.unit,
    comments: productapi.comments);

}