import 'package:e_commerce_getx/core/services/services.dart';
import 'package:e_commerce_getx/view/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/onboarding_data.dart';


class OnboardingController extends GetxController {
  int currentPage = 0;
  PageController? pageController;
  Services services = Get.find();

  next() {
    currentPage++;
    if (currentPage == onboardingData.length) {
      currentPage = 0;
    }
    pageController?.animateToPage(currentPage,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  void onPressSkip(){
    services.sharedPreferences.setBool('onboarding', true);
    Get.offAllNamed(LogInScreen.screenRout);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
