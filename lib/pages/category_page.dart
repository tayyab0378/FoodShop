import 'package:flutter/material.dart';

import '../models/products.dart';
import '../styles/app_text.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories'), actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
      ]),
      backgroundColor: Colors.grey[300],
      body: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return buildProductCard(products[index]);
          },
        ),
      ),
    );
  }
}

Widget buildProductCard(Map<String, dynamic> product) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Stack(
      children: [
        // Main content of the card.
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Image.asset(
                product['image'],
                height: 80,
              ),
            ),
            Text(
              '\$${product['price'].toString()}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(product['name'], style: AppText.poppinsTextStyle1),
            SizedBox(height: 5),
            Text(
              product['unit'],
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Spacer(),
            Divider(
              height: 20,
            ),
            // Elevated button with icon on the left side.
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5),
                  Text('Add to Cart')
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
        // Favorite icon at top-right corner.
        Positioned(
          top: 4,
          right: 0,
          child: IconButton(
            icon: Icon(Icons.favorite, color: Colors.redAccent),
            onPressed: () {
              // Handle favorite action here.
            },
          ),
        ),
      ],
    ),
  );
}
