import 'package:e_commerce_getx/controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';
import '../text_form_field_widget.dart';

class OTPTextField extends GetView<OTPController> {
  const OTPTextField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormFieldWidget(
                width: width(context) * 0.2,
                height: 60,
                formKey: controller.keyOne,
                contr: controller.controllerOne),
            TextFormFieldWidget(
                width: width(context) * 0.2,
                height: 60,
                formKey: controller.keyTow,
                contr: controller.controllerTwo),
            TextFormFieldWidget(
                width: width(context) * 0.2,
                height: 60,
                formKey: controller.keyThree,
                contr: controller.controllerThree),
            TextFormFieldWidget(
                width: width(context) * 0.2,
                height: 60,
                formKey: controller.keyFour,
                contr: controller.controllerFore),
          ],
        ),
      ),
    );
  }
}
