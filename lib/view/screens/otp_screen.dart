import 'package:e_commerce_getx/controller/otp_controller.dart';
import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/core/services/services.dart';
import 'package:e_commerce_getx/view/widget/login_widget/login_button_widget.dart';
import 'package:e_commerce_getx/view/widget/login_widget/title_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/const_color.dart';
import '../widget/otp_widget/OTPTextField.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  static const String screenRoute = '/otp';

  @override
  Widget build(BuildContext context) {
    OTPController controller = Get.put(OTPController());
    Services services = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          TitleAndSubTitle(
              title: 'OTP Verification'.tr,
              subTitle:
                  'We sent your code to +1 898 860 *** This code will expired in 00:13'.tr),
          const OTPTextField(),
          LogInButtonWidget(() {
            controller.continueButton();
          }),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width(context) * 0.13),
            alignment: Alignment.bottomCenter,
            height: 70,
            child: Text(
              'Resend OTP Code'.tr,
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
