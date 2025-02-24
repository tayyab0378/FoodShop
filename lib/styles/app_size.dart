import 'package:flutter/widgets.dart';

class AppSize {
  static late double screenWidth;
  static late double screenHeight;
  static late double scaleWidth;
  static late double scaleHeight;

  // Initialize the class with the current context
  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    // Define a reference screen size (e.g., a common mobile screen size)
    const double referenceWidth =
        411.43; // Reference width (e.g., iPhone 12/13 mini)
    const double referenceHeight =
        866.29; // Reference height (e.g., iPhone 12/13 mini)

    // Calculate scaling factors
    scaleWidth = screenWidth / referenceWidth;
    scaleHeight = screenHeight / referenceHeight;
  }

  // Scale height based on the reference height
  static double height(double value) => value * scaleHeight;

  // Scale width based on the reference width
  static double width(double value) => value * scaleWidth;

  // Scale font size or other dimensions based on the average of width and height scaling
  static double fontSize(double value) =>
      value * ((scaleWidth + scaleHeight) / 2);
}
