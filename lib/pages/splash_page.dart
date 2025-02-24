// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_shop/pages/auth/sign_in_page.dart';
import 'package:food_shop/styles/app_text.dart';
import 'package:food_shop/styles/assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.splash_image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 96,
            left: 47,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              height: 200,
              width: 320,
              child: Column(
                children: [
                  Text(
                    'Welcome to',
                    style: AppText.heading1,
                  ),
                  Image.asset(Assets.big_cart)
                ],
              ),
            ),
          ),
          Positioned(
              top: 806,
              left: 147,
              child: Text(
                'POWERED BY',
                style: AppText.paragraphStyle,
              )),
          Positioned(
              top: 835,
              left: 121,
              child: Text(
                'THE CODE CRAFT',
                style: AppText.customTextStyle,
              )),
        ],
      ),
    );
  }
}
