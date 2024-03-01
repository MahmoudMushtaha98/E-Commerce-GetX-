import 'package:flutter/material.dart';

import '../../../core/constant/dimensions.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.iconData,
    required this.text,
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context) * 0.15,
          height: 60,
          decoration: const BoxDecoration(
              color: Color(0xffffeadc),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Icon(iconData),
        ),
        SizedBox(
          width: width(context) * 0.15,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
