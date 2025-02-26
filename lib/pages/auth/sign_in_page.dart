import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shop/components/app_button.dart';
import 'package:food_shop/components/app_textfield.dart';
import 'package:food_shop/styles/app_size.dart';
import 'package:food_shop/styles/app_text.dart';
import 'package:food_shop/styles/assets.dart';

import '../home_page.dart';
import 'sign_up_page.dart';

void main() {
  runApp(MaterialApp(home: SignInPage()));
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: AppSize.responsiveHeight(500),
            child: Image.asset(Assets.sign_in_image),
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
                  Text('Welcome back !', style: AppText.text2),
                  SizedBox(height: 10),
                  Text('Sign in to your account', style: AppText.text3),
                  SizedBox(height: 20),
                  AppTextField(
                    hintText: 'Email Address',
                    prefixIcon: Icons.email,
                  ),
                  AppTextField(
                    hintText: '* * * * * *',
                    obscureText: true,
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.remove_red_eye,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 0.7, // Adjust the scale factor as needed
                            child: CupertinoSwitch(
                              value: true,
                              activeTrackColor: Color(0xFFAEDC81), // #6CC51D

                              onChanged: (value) {},
                            ),
                          ),
                          SizedBox(width: 8), // Add some spacing
                          Text('Remember me'),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: AppText.text3.copyWith(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  AppButton(
                      text: 'Sign In',
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
                        " Don't have an account?",
                        style: AppText.text3,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ));
                          },
                          child: Text(
                            'Sign Up',
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
