import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  const CustomTextStyle({
    super.key, required this.data, this.fontWeight, this.fontSize, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? Colors.black,
          fontSize: fontSize ??  20,
          fontWeight: fontWeight?? FontWeight.w500,

      ),
    );
  }
}
