import 'package:e_commerce_getx/core/constant/dimensions.dart';
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
      appBar: AppBar(
        title: Text('lang'.tr),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  controller.changeLang('ar');
                  Get.offAllNamed(OnboardingScreen.screenRoute);
                },
                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage('assets/images/jordan.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('Arabic'),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  controller.changeLang('en');
                  Get.offAllNamed(OnboardingScreen.screenRoute);
                },
                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage('assets/images/amirca.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('English'),
                    )

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
