import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  const Bubble({
    super.key,
    this.height = 110,
    this.width = 110,
    this.borderColor = Colors.transparent,
    this.fillColor = Colors.transparent,
  });

  final double height;
  final double width;
  final Color borderColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: fillColor,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(height / 2),
      ),
    );
  }
}
