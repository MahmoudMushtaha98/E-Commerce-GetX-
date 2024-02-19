import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/login_controller.dart';
import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';

class TitleAndSubTitle extends GetView<LogInController> {
  const TitleAndSubTitle({
    required this.title,
    required this.subTitle,
    super.key,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title.tr,
            style: controller.language!.contains('en')
                ? Theme.of(context).textTheme.labelLarge
                : Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            width: width(context) * 0.65,
            child: Text(
              subTitle
                  .tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: grayColor,
                  fontFamily: controller.language!.contains('en')
                      ? Theme.of(context).textTheme.labelLarge!.fontFamily
                      : Theme.of(context).textTheme.labelMedium!.fontFamily,
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
