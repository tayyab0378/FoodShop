import 'package:flutter/widgets.dart';

class AppSize {
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  static double height(double value) => screenHeight * (value / 812);
  static double width(double value) => screenWidth * (value / 375);
}
