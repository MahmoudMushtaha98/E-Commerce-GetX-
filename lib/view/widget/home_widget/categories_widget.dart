import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/HomeController.dart';
import '../../../core/constant/const_color.dart';

class CategoriesWidget extends GetView<HomeController> {
  const CategoriesWidget({
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
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: grayColor.withOpacity(0.5), shape: BoxShape.circle),
          child: Icon(iconData),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: controller.language!.contains('en')
                  ? Theme.of(context).textTheme.bodyMedium!.fontFamily
                  : Theme.of(context).textTheme.displayMedium!.fontFamily),
        )
      ],
    );
  }
}
