import 'package:e_commerce_getx/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/onboarding_widget/buttons_widget.dart';
import '../widget/onboarding_widget/dot_container_widget.dart';
import '../widget/onboarding_widget/page_view_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String screenRoute = '/onboarding';

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: const [
            PageViewWidget(),
            DotContainerWidget(),
            ButtonsWidget(),
          ],
        ),
      ),
    );
  }
}



