import 'package:flutter/widgets.dart';

class AppSize {
  static double height = 0;
  static double width = 0;
  static double padding = 16.0;

  static void init(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    padding = width * 0.05;
  }

  // Methods to convert integer values to responsive sizes based on actual screen dimensions
  static double responsiveHeight(double value) => height * (value / height);
  static double responsiveWidth(double value) => width * (value / width);
}
