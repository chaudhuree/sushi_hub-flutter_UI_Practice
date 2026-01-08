class Food {
  final String name;
  final String? description;
  final String? rating;
  final double price;
  final String imageUrl;

  Food({
    required this.name,
    this.rating,
    this.description,
    required this.price,
    required this.imageUrl,
  });
}
