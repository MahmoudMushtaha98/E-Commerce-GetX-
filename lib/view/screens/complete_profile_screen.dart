import 'dart:developer';

import 'package:e_commerce_getx/controller/complete_profile_controller.dart';
import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/core/services/services.dart';
import 'package:e_commerce_getx/view/widget/login_widget/login_button_widget.dart';
import 'package:e_commerce_getx/view/widget/login_widget/title_sub_title.dart';
import 'package:e_commerce_getx/view/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/const_color.dart';
import '../widget/complete_profile_widget/complete_form_field_widget.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  static const String screenRoute = '/complete';

  @override
  Widget build(BuildContext context) {
    CompleteProfileController controller = Get.put(CompleteProfileController());
    Services services = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
           TitleAndSubTitle(
              title: 'Complete Profile'.tr,
              subTitle: 'Complete your details or continue with social media'.tr),
          const SizedBox(
            height: 330,
            child: CompleteFormFieldWidget(),
          ),
          LogInButtonWidget(() {
            controller.continueButton();
          }),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width(context)*0.13),
            alignment: Alignment.bottomCenter,
            height: 70,
            child: Text(
              'By continuing your confirm that you agree with our term and condition'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: grayColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: Theme.of(context).textTheme.bodyMedium!.fontFamily),
            ),
          )
        ],
      ),
    );
  }
}
