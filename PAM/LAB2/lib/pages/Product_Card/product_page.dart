import 'package:flutter/material.dart';
import 'Widget_Product_Card/product_images_carousel.dart';
import 'Widget_Product_Card/product_options.dart';
import 'Widget_Product_Card/product_info.dart';
import 'Widget_Product_Card/product_description.dart';
import 'Widget_Product_Card/add_to_cart_section.dart';
import 'Widget_Product_Card/product_expansion.dart';
import 'Widget_Product_Card/product_recommendations.dart';
import '../../../models/product.dart';
import 'Mock_Data/mock_data_recommendation.dart'; // import lista mock

class ProductDetailPage extends StatelessWidget { final Product product; const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Short Dress", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(icon: const Icon(Icons.share, color: Colors.black), onPressed: () {}),
          IconButton(icon: const Icon(Icons.favorite_border, color: Colors.black), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductImagesCarousel(
              images: [
                "assets/1.png",
                "assets/2.png",
              ],
            ),
            const SizedBox(height: 16),
            const ProductOptions(),
            const SizedBox(height: 16),
            const ProductInfo(brand: "H&M", price: "\$19.99"),
            ProductDescription(
              description: "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed hem.",
            ),
            AddToCartSection(onAddToCart: () {}),
            const ProductExpansion(),
            ProductRecommendations(products: mockProducts),
          ],
        ),
      ),
    );
  }
}
