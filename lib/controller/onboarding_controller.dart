import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/onboarding_data.dart';
import '../main.dart';

class OnboardingController extends GetxController {
  int currentPage = 0;

  PageController? pageController;
  String? language = sharedPreferences.getString('lang');

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

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
