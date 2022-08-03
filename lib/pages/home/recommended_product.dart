import 'package:flutter/material.dart';

class RecommendedProduct {
  Color? cardBackgroundColor;
  Color? buttonTextColor;
  Color? buttonBackgroundColor;
  Color? color;
  String? imagePath;

  RecommendedProduct(
      {this.cardBackgroundColor,
      this.buttonTextColor = const Color(0xFFEC6813),
      this.buttonBackgroundColor = Colors.white,
      this.color = Colors.blueGrey,
      this.imagePath});
}
