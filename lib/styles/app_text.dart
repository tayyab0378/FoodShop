import 'package:flutter/material.dart';

class AppText {
  static const TextStyle heading1 = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700, // 700 weight (Bold)
      fontSize: 30, // 30px size
      height: 39 / 30, // Line height (39px ÷ 30px = 1.3)
      letterSpacing: 0.03 * 30, // 3% of 30px (0.03 * 30 = 0.9)
      color: Color(0xFF000000) // Default color (adjust if needed)
      );
  static const TextStyle paragraphStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500, // 500 weight (Medium)
    fontSize: 15, // 15px size
    height: 22.5 / 15, // Line height (22.5px ÷ 15px = 1.5)
    letterSpacing: 0.20 * 15, // 20% of 15px (0.20 * 15 = 3.0)
    color: Color(0xFF868889), // Hex color #868889
  );
  static const TextStyle customTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700, // 700 weight (Bold)
    fontSize: 20, // 20px size
    height: 30 / 20, // Line height (30px ÷ 20px = 1.5)
    color: Color(0xFF6CC51D), // Hex color #6CC51D (Green)
  );
}
