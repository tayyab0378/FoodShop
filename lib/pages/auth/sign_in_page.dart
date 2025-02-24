import 'package:flutter/material.dart';
import 'package:food_shop/styles/assets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(Assets.sign_in_image),
    );
  }
}
