
import 'package:e_commerce_getx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';
import '../custom_button_widget.dart';

class LogInButtonWidget extends GetView<Services> {
  const LogInButtonWidget(this.callback, {
    super.key,
  });

final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtonWidget(
            onTap: callback,
            color: buttonColor,
            text: '7'.tr,
            widthButton: width(context) * 0.9,
            fontSize: 20,
            fontFamily: Theme.of(context).textTheme.bodyMedium!.fontFamily,
          )
        ],
      ),
    );
  }
}
