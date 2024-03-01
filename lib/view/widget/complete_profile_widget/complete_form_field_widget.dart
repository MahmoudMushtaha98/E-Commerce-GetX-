import 'package:e_commerce_getx/controller/complete_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';
import '../text_form_field_widget.dart';

class CompleteFormFieldWidget extends GetView<CompleteProfileController> {
  const CompleteFormFieldWidget({
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
            hintText: 'First Name'.tr,
            label: 'Enter Your First Name'.tr,
            suffixIcon: Icons.person_outline,
            formKey: controller.fNameKey,
            contr: controller.fNameController),
        TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Last Name'.tr,
            label: 'Enter Your Last Name'.tr,
            suffixIcon: Icons.person_outline,
            formKey: controller.lNameKey,
            contr: controller.lNameController),
        TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Phone Number'.tr,
            label: 'Enter Your Phone Number'.tr,
            suffixIcon: Icons.phone_android,
            formKey: controller.phoneKey,
            contr: controller.phoneController),
        TextFormFieldWidget(
            width: width(context) * 0.9,
            height: 60,
            hintText: 'Address'.tr,
            label: 'Enter Your Address'.tr,
            suffixIcon: Icons.location_on_outlined,
            formKey: controller.addressKey,
            contr: controller.addressController),
      ],
    );
  }
}
