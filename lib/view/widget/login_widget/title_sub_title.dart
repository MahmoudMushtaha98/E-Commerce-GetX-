import 'package:e_commerce_getx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';

class TitleAndSubTitle extends GetView<Services> {
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
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(
            width: width(context) * 0.65,
            child: Text(
              subTitle
                  .tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: grayColor,
                  fontFamily: Theme.of(context).textTheme.labelLarge!.fontFamily,
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
