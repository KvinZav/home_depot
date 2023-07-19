import 'package:home_depot/infrastructure/models/product/product_productapi.dart';

class ProductApiResponse {
    int pages;
    int totalPages;
    int totalResults;
    List<ProductProductApi> products;

    ProductApiResponse({
        required this.pages,
        required this.totalPages,
        required this.totalResults,
        required this.products,
    });

    factory ProductApiResponse.fromJson(Map<String, dynamic> json) => ProductApiResponse(
        pages: json["pages"],
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
        products: List<ProductProductApi>.from(json["products"].map((x) => ProductProductApi.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pages": pages,
        "total_pages": totalPages,
        "total_results": totalResults,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}