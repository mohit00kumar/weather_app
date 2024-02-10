import 'package:flutter/material.dart';

class CelciusSymbol extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double margin;
  final double borderWidth;
  const CelciusSymbol({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.margin, 
     this.borderWidth = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      height: height,
      width: height,
      decoration: BoxDecoration(
        border: Border.all(color: color, width: borderWidth),
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
    );
  }
}
