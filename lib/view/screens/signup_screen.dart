import 'package:e_commerce_getx/view/widget/login_widget/login_button_widget.dart';
import 'package:e_commerce_getx/view/widget/login_widget/login_typs_widget.dart';
import 'package:e_commerce_getx/view/widget/login_widget/title_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';
import '../../core/constant/const_color.dart';
import '../widget/signup_widget/last_text_widget.dart';
import '../widget/signup_widget/signup_text_field_widget.dart';

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
              fontFamily: Theme.of(context).textTheme.bodyMedium!.fontFamily),
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
          const SizedBox(
            height: 270,
            child: SignUpTextField(),
          ),
          LogInButtonWidget(
            () {
              controller.continueButton();
            },
          ),
          const LogInTypesWidget(),
          const LastTextWidget()
        ],
      ),
    );
  }
}
