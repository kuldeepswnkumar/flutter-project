class ProductCatalog {
  static List<Items> items = [];
}

class Items {
  final int id;
  final String title;
  final String description;
  final num price;
  final String brand;
  final List<dynamic> images;

  Items({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.brand,
    required this.images,
  });

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      price: map['price'],
      brand: map['brand'] ?? "",
      images: List<String>.from(map['images'] ?? []), // ✅ correct
    );
  }
}
