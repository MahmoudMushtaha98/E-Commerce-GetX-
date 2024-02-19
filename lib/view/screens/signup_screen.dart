import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/widget/login_widget/login_button_widget.dart';
import 'package:e_commerce_getx/view/widget/login_widget/login_typs_widget.dart';
import 'package:e_commerce_getx/view/widget/login_widget/title_sub_title.dart';
import 'package:e_commerce_getx/view/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/signup_controller.dart';
import '../../core/constant/const_color.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const String screenRout = '/signup';

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up'.tr,
          style: TextStyle(
              color: grayColor,
              fontFamily: controller.language!.contains('en')
                  ? Theme.of(context).textTheme.bodyMedium!.fontFamily
                  : Theme.of(context).textTheme.displayMedium!.fontFamily),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 200,
            child: TitleAndSubTitle(
                title: 'Register Account',
                subTitle:
                    'Complete your details or continue with social media'),
          ),
          SizedBox(
            height: 270,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormFieldWidget(
                    width: width(context) * 0.9,
                    height: 60,
                    hintText: 'Email',
                    label: 'Enter Your Email',
                    iconData: Icons.email_outlined,
                    formKey: controller.emailKey,
                    contr: controller.emailController),
                TextFormFieldWidget(
                    width: width(context) * 0.9,
                    height: 60,
                    hintText: 'Password',
                    label: 'Enter Your Password',
                    iconData: Icons.lock_outline,
                    formKey: controller.passKey,
                    contr: controller.passController),
                TextFormFieldWidget(
                    width: width(context) * 0.9,
                    height: 60,
                    hintText: 'Confirm Password',
                    label: 'Re-Enter Your Password',
                    iconData: Icons.lock_outline,
                    formKey: controller.rePasswordKey,
                    contr: controller.rePassController),
              ],
            ),
          ),
          LogInButtonWidget(
            () {},
          ),
          const LogInTypesWidget(),
          Container(
            alignment: Alignment.bottomCenter,
            height: 70,
            child: Text(
              "By continuing your confirm that you agree".tr,
              style: TextStyle(
                  color: grayColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontFamily: controller.language!.contains('en')
                      ? Theme.of(context).textTheme.bodyMedium!.fontFamily
                      : Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .fontFamily),
            ),
          )
        ],
      ),
    );
  }
}
