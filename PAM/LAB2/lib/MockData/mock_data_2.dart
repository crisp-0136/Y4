import '../models/product.dart';

final List<Product> mockProducts = [
  Product(
    name: "Blouse",
    brand: "OVS",
    price: 30,
    oldPrice: 20,
    imageUrl: "assets/new1.png",
    isNew : true
  ),
  Product(
      name: "Evening Dress",
      brand: "Dorothy Perkins",
      price: 12,
      oldPrice: 15,
      imageUrl: "assets/evening_dress.png",
      discount: 20,
      rating: 5
  ),
  Product(
    name: "T-shirt Sailing",
    brand: "Mango Boy",
    price: 10,
    imageUrl: "assets/new2.png",
  ),
];
