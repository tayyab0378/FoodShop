import 'package:flutter/material.dart';
import 'package:food_shop/components/app_button.dart';
import 'package:food_shop/components/app_textfield.dart';
import 'package:food_shop/pages/congrats_page.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckOut'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 20),
        child: Column(
          children: [
            AppTextField(hintText: 'Name', prefixIcon: Icons.person),
            AppTextField(hintText: 'Email Address', prefixIcon: Icons.email),
            AppTextField(hintText: 'Phone Number', prefixIcon: Icons.phone),
            AppTextField(hintText: 'Address', prefixIcon: Icons.location_on),
            AppTextField(hintText: 'Zip Code', prefixIcon: Icons.message),
            AppTextField(hintText: 'City', prefixIcon: Icons.map_outlined),
            AppTextField(
                hintText: 'Country', prefixIcon: Icons.public_outlined),
            Spacer(),
            AppButton(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CongratsPage(),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
