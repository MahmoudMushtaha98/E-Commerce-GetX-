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
    return SizedBox(
      width: width,
      height: width,
      child: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(20),
          child: Image.asset(url)),
    );
  }
}