class ProductProductApi {
    String id;
    String name;
    String description;
    String imageUrl;
    double price;
    double rating;
    int comments;
    String unit;

    ProductProductApi({
        required this.id,
        required this.name,
        required this.description,
        required this.imageUrl,
        required this.price,
        required this.rating,
        required this.comments,
        required this.unit,
    });

    factory ProductProductApi.fromJson(Map<String, dynamic> json) => ProductProductApi(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        price: json["price"]?.toDouble(),
        rating: json["rating"]?.toDouble(),
        comments: json["comments"],
        unit: json["unit"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "imageUrl": imageUrl,
        "price": price,
        "rating": rating,
        "comments": comments,
        "unit": unit,
    };
}
