import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/login_controller.dart';
import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';
import '../text_form_field_widget.dart';

class TextFormFieldLogIn extends GetView<LogInController> {
  const TextFormFieldLogIn({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Email'.tr,
            label: 'Enter Your Email'.tr,
            suffixIcon: Icons.email_outlined,
            formKey: controller.emailFormKey,
            contr: controller.emailController,
          ),
          TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Password'.tr,
            label: 'Enter Your Password'.tr,
            suffixIcon: Icons.lock_outline,
            formKey: controller.passFormKey,
            contr: controller.passController,
            obscureText: true,
          ),
          SizedBox(
            width: width(context) * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      side: BorderSide(color: grayColor),
                      onChanged: (value) {},
                    ),
                    Text(
                      'Remember Me'.tr,
                      style: TextStyle(fontSize: 15, color: grayColor),
                    )
                  ],
                ),
                Text(
                  'Forgot Yor Password'.tr,
                  style: TextStyle(fontSize: 15, color: grayColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}