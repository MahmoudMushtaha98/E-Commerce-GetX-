import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    super.key,
    required this.width, required this.url,
  });

  final double width;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: grayColor.withOpacity(0.3),
        shape: BoxShape.circle
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(20),
          child: Image.asset(url)),
    );
  }
}