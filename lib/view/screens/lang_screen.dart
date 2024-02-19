import 'package:e_commerce_getx/view/screens/onboarding_screen.dart';
import 'package:e_commerce_getx/view/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/changelocal.dart';

class LanguageScreen extends GetView<LocalController> {
  const LanguageScreen({super.key});

  static const String screenRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text(
            'lang'.tr,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtonWidget(
              onTap: () {
                controller.changeLang('ar');
                Get.offAllNamed(OnboardingScreen.screenRoute);
              },
              text: 'AR',
              color: Colors.blue,
              fontFamily: Theme.of(context).textTheme.titleLarge!.fontFamily,
            ),
          ),
          CustomButtonWidget(
            onTap: () {
              controller.changeLang('en');
              Get.offAllNamed(OnboardingScreen.screenRoute);
            },
            text: 'EN',
            color: Colors.blue,
            fontFamily: Theme.of(context).textTheme.titleLarge!.fontFamily,
          )
        ],
      ),
    );
  }
}
