class Items {
  final int id;
  final String title;
  final String descprition;
  final num price;
  final String brand;
  final String images;

  Items({
    required this.id,
    required this.title,
    required this.descprition,
    required this.price,
    required this.brand,
    required this.images,
  });
}

final products = [
  Items(
    id: 1,
    title: "Essence Mascara Lash Princess",
    descprition:
        "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
    price: 900,
    brand: "Essence",
    images:
        "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
  ),
];
