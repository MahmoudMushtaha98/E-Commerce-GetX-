class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final String rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});
}
