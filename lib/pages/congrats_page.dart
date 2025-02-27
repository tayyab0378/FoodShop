import 'package:flutter/material.dart';
import 'package:food_shop/components/app_button.dart';
import 'package:food_shop/pages/home_page.dart';

class CongratsPage extends StatelessWidget {
  const CongratsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use SafeArea to avoid notches on devices like iPhone
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                // Circle with Check Icon
                Center(child: Image.asset('assets/images/success_image.png')),
                const SizedBox(height: 24),
                // "Congrats!" text
                Text(
                  'Congrats!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                // Order Info text
                Text(
                  'Your Order #123456 is\nSuccessfully Received',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                Spacer(),
                // "Go to home" button
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: AppButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    text: 'Go to home',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
