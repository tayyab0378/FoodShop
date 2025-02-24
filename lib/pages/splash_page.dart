import 'package:flutter/material.dart';
import 'package:food_shop/pages/auth/sign_in_page.dart';
import 'package:food_shop/styles/app_text.dart';
import 'package:food_shop/styles/assets.dart';
import 'package:food_shop/styles/app_size.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 99), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.splash_image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: AppSize.height(96),
            left: AppSize.width(47),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppSize.width(50)),
              height: AppSize.height(200),
              width: AppSize.width(320),
              child: Column(
                children: [
                  Text(
                    'Welcome to',
                    style: AppText.heading1
                        .copyWith(fontSize: AppSize.fontSize(24)),
                  ),
                  Image.asset(Assets.big_cart),
                ],
              ),
            ),
          ),
          Positioned(
            top: AppSize.height(806),
            left: AppSize.width(147),
            child: Text(
              'POWERED BY',
              style: AppText.paragraphStyle
                  .copyWith(fontSize: AppSize.fontSize(14)),
            ),
          ),
          Positioned(
            top: AppSize.height(835),
            left: AppSize.width(121),
            child: Text(
              '    THE CODE CRAFT',
              style: AppText.customTextStyle
                  .copyWith(fontSize: AppSize.fontSize(16)),
            ),
          ),
        ],
      ),
    );
  }
}
