import 'package:flutter/material.dart';

class ProductOptions extends StatefulWidget {
  const ProductOptions({super.key});

  @override
  State<ProductOptions> createState() => _ProductOptionsState();
}

class _ProductOptionsState extends State<ProductOptions> {
  String? selectedSize;
  String? selectedColor;
  bool isFavorite = false; // 🔴 starea pentru inimioară

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 🔹 Dropdown pentru Size
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: const Text("Size"),
                  value: selectedSize,
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: ["S", "M", "L"].map((e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Center(
                        child: Text(e, style: const TextStyle(fontWeight: FontWeight.w600)),
                      ),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() => selectedSize = val);
                  },
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          // 🔹 Dropdown pentru Color
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: const Text("Color"),
                  value: selectedColor,
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: ["Black", "Red", "Blue"].map((e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: Center(
                        child: Text(e, style: const TextStyle(fontWeight: FontWeight.w600)),
                      ),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() => selectedColor = val);
                  },
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          // ❤️ Inimioara
          Material(
            color: Colors.white,
            elevation: 3,
            shape: const CircleBorder(),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                  size: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
