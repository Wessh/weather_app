import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String data;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  const CustomTextWidget({
    super.key,
    required this.data,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
