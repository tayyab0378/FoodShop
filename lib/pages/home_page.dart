import 'package:flutter/material.dart';
import 'package:food_shop/components/app_textfield.dart';
import 'package:food_shop/styles/app_size.dart';
import 'package:food_shop/styles/app_text.dart';
import 'package:food_shop/styles/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextField(
                hintText: 'Search keywords',
                prefixIcon: Icons.search,
                suffixIcon: Icons.sort,
              ),
              SizedBox(height: 20),
              // Promotional Banner
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: [
                    Image.asset(
                      Assets.sign_in_image,
                      width: double.infinity,
                      height: 283,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: AppSize.responsiveWidth(61),
                      top: AppSize.responsiveHeight(180),
                      child: Text(
                        '20% off on your\nfirst purchase',
                        style: AppText.text2.copyWith(color: Color(0xFF000000)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Categories Section
              Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 78, // Adjust the height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategory(Icons.eco, 'Vegetables'),
                    _buildCategory(Icons.local_pizza, 'Fruits'),
                    _buildCategory(Icons.local_drink, 'Beverages'),
                    _buildCategory(Icons.shopping_cart, 'Grocery'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Featured Products Section
              Text(
                'Featured products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return _buildProductCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategory(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green[100],
            child: Icon(icon, color: Colors.green),
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildProductCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://source.unsplash.com/100x100/?fruit',
              height: 80,
            ),
          ),
          Text(
            '\$7.00',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          Text(
            'Fresh Fruit',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 5),
          Text(
            '1.5 lbs',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add to cart'),
          ),
        ],
      ),
    );
  }
}
