import 'package:e_commerce_getx/controller/signup_controller.dart';
import 'package:e_commerce_getx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/const_color.dart';

class LastTextWidget extends GetView<Services> {
  const LastTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 70,
      child: Text(
        "By continuing your confirm that you agree".tr,
        style: TextStyle(
            color: grayColor,
            fontSize: 15,
            fontWeight: FontWeight.w300,
            fontFamily: Theme.of(context).textTheme.bodyMedium!.fontFamily),
      ),
    );
  }
}
