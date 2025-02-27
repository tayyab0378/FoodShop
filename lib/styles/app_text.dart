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
  static const TextStyle customTextStyle1 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500, // 500 weight (Medium)
    fontSize: 18, // 18px size
    height: 27 / 18, // Line height (27px ÷ 18px = 1.5)
    letterSpacing: 0.03 * 18, // 3% of 18px (0.03 * 18 = 0.54)
    color: Colors.white, // Hex color #FFFFFF (White)
  );
  static const text2 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600, // Weight 600
    fontSize: 25, // Size 25px
    height: 37.5 / 25, // Line height (37.5px) divided by font size (25px)
    letterSpacing: 0.03 * 25, // Letter spacing (3% of font size)
    color: Color(0xFF000000), // Color #000000
  );
  static const text3 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400, // Weight 400
    fontSize: 15, // Size 15px
    height: 22.5 / 15, // Line height (22.5px) divided by font size (15px)
    letterSpacing: 0.03 * 15, // Letter spacing (3% of font size)
    color: Color(0xFF868889), // Color #868889
  );
  static const TextStyle poppinsTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600, // 600 weight
    fontSize: 18, // 18px
    height: 27 / 18, // Line height: 27px
    letterSpacing: 0, // 0% letter spacing
    color: Color(0xFF000000), // Black color
  );
  static const TextStyle poppinsTextStyle1 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600, // weight 600
    fontSize: 15, // 15px size
    height: 22.5 / 15, // line height of 22.5px (factor = 22.5/15)
    letterSpacing: 0, // 0% letter spacing
    color: Color(0xFF000000), // Black color
  );
}
