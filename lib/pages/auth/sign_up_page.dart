// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_shop/pages/auth/sign_in_page.dart';
import 'package:food_shop/pages/home_page.dart';

import '../../components/app_button.dart';
import '../../components/app_textfield.dart';
import '../../styles/app_size.dart';
import '../../styles/app_text.dart';
import '../../styles/assets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: AppSize.responsiveHeight(500),
            child: Image.asset(Assets.sign_up_image),
          ),
          Positioned(
              top: AppSize.responsiveHeight(50),
              left: AppSize.responsiveWidth(17),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: AppSize.responsiveWidth(96),
                  ),
                  Text(
                    'Welcome',
                    style: AppText.text3.copyWith(color: Colors.white),
                  )
                ],
              )),
          SizedBox(
            height: double.infinity,
          ),
          // Login Form
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFfF4F5F9),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create an account', style: AppText.text2),
                  SizedBox(height: 10),
                  Text('Quickly create an account', style: AppText.text3),
                  SizedBox(height: 20),
                  AppTextField(
                    hintText: 'Email Address',
                    prefixIcon: Icons.email,
                  ),
                  AppTextField(
                    hintText: 'Phone Number',
                    prefixIcon: Icons.phone,
                  ),
                  AppTextField(
                    hintText: '* * * * * *',
                    obscureText: true,
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.remove_red_eye,
                  ),
                  SizedBox(height: 20),
                  AppButton(
                      text: 'Sign Up',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                      }),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account",
                        style: AppText.text3,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                          },
                          child: Text(
                            'Sign In',
                            style: AppText.text3.copyWith(color: Colors.blue),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
