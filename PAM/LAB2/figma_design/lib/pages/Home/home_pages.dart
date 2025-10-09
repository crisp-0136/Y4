import 'package:flutter/material.dart';
import '../../MockData/mock_data.dart' as mock1;
import '../../MockData/mock_data_2.dart' as mock2;
import '../../Widget/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildSection(String title, List products) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Titlu secțiune
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const Text("View all", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),


        // Listă orizontală
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/banner.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Street clothes",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              // Secțiuni
              buildSection("Sale", mock1.mockProducts),      // prima listă
              buildSection("New products", mock2.mockProducts), // a doua listă
              buildSection("Recommended", mock1.mockProducts), // a treia listă
            ],
          ),
        ),
      ),
    );
  }
}
