import 'package:e_commerce_getx/controller/login_controller.dart';
import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/services/services.dart';
import '../widget/login_widget/login_button_widget.dart';
import '../widget/login_widget/login_typs_widget.dart';
import '../widget/login_widget/signup_button_widget.dart';
import '../widget/login_widget/text_form_field.dart';
import '../widget/login_widget/title_sub_title.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  static const String screenRout = '/login';

  @override
  Widget build(BuildContext context) {
    LogInController controller = Get.put(LogInController());
    Services services = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In'.tr,
          style: TextStyle(
              color: grayColor,
              fontFamily: Theme.of(context).textTheme.bodyMedium!.fontFamily),
        ),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () => controller.onPressBack(),
        child: ListView(
          children: [
            const TitleAndSubTitle(
                title: 'Welcome Back',
                subTitle:
                    'Sign in with your email and password or continue with social media'),
            const TextFormFieldLogIn(),
            LogInButtonWidget(() {
              controller.logIn();
            }),
            const LogInTypesWidget(),
            const SignUpButtonWidget()
          ],
        ),
      ),
    );
  }
}
