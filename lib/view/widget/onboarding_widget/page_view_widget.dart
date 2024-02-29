import 'package:e_commerce_getx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/dimensions.dart';
import '../../../core/constant/onboarding_data.dart';

class PageViewWidget extends GetView<OnboardingController> {
  const PageViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Services services = Get.find();
    return SizedBox(
      height: 600,
      child: PageView.builder(
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        controller: controller.pageController,
        itemCount: onboardingData.length,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              onboardingData[index].title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Image.asset(
              onboardingData[index].path,
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(
              onboardingData[index].description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
