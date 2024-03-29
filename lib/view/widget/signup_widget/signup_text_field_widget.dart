
import 'package:e_commerce_getx/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';
import '../text_form_field_widget.dart';

class SignUpTextField extends GetView<SignUpController> {
  const SignUpTextField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Email'.tr,
            label: 'Enter Your Email'.tr,
            suffixIcon: Icons.email_outlined,
            formKey: controller.emailKey,
            contr: controller.emailController),
        TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Password'.tr,
            label: 'Enter Your Password'.tr,
            suffixIcon: Icons.lock_outline,
            formKey: controller.passKey,
            contr: controller.passController),
        TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Confirm Password'.tr,
            label: 'Re-Enter Your Password'.tr,
            suffixIcon: Icons.lock_outline,
            formKey: controller.rePasswordKey,
            contr: controller.rePassController),
      ],
    );
  }
}