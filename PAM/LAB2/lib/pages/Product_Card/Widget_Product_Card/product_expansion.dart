import 'package:flutter/material.dart';

class ProductExpansion extends StatelessWidget {
  const ProductExpansion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(),
        ExpansionTile(
          title: Text("Shipping info"),
          children: [Padding(padding: EdgeInsets.all(16), child: Text("Free shipping for orders over \$50"))],
        ),
        ExpansionTile(
          title: Text("Support"),
          children: [Padding(padding: EdgeInsets.all(16), child: Text("Contact us at support@example.com"))],
        ),
      ],
    );
  }
}
