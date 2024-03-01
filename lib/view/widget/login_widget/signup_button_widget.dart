
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/login_controller.dart';
import '../../../core/constant/const_color.dart';

class SignUpButtonWidget extends GetView<LogInController> {
  const SignUpButtonWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account? ".tr,
            style: TextStyle(
                color: grayColor,
                fontWeight: FontWeight.w300,
                fontFamily: Theme.of(context).textTheme.bodyMedium!.fontFamily),
          ),
          InkWell(
            onTap: () => controller.signUpScreen(),
            child: Text(
              'Sign Up'.tr,
              style: TextStyle(
                  color: buttonColor,
                  fontWeight: FontWeight.w300,
                  fontFamily: Theme.of(context).textTheme.bodyMedium!.fontFamily),
            ),
          ),
        ],
      ),
    );
  }
}
