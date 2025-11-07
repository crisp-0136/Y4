import '../../../models/product.dart';

final List<Product> mockProducts = [
  Product(
    name: "Evening Dress",
    brand: "Dorothy Perkins",
    price: 125,
    oldPrice: 155,
    imageUrl: "assets/evening_dress.png",
    discount: 20,
  ),
  Product(
      name: "Sport Dress",
      brand: "Silly",
      price: 19,
      oldPrice: 22,
      imageUrl: "assets/sport_dress.png",
      discount: 15,
      rating: 5
  ),
  Product(
      name: "Sport Dress",
      brand: "H&M",
      price: 19.99,
      imageUrl: "assets/short_dress.png",
      rating: 5
  ),
];
