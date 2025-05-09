import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? elevation;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.elevation,
    this.borderRadius,
    this.padding,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFAEDC81), // #AEDC81
              Color(0xFF6CC51D), // #6CC51D
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
