import 'package:e_commerce_getx/controller/onboarding_controller.dart';
import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';
import '../../../core/constant/onboarding_data.dart';

class DotContainerWidget extends StatelessWidget {
  const DotContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(onboardingData.length, (index) {
            return GetBuilder<OnboardingController>(
              builder: (OnboardingController controller) {
                return AnimatedContainer(
                  margin: EdgeInsets.only(right: width(context) * 0.01),
                  duration: const Duration(milliseconds: 500),
                  width: controller.currentPage == index
                      ? width(context) * 0.05
                      : width(context) * 0.02,
                  height: height(context) * 0.01,
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
