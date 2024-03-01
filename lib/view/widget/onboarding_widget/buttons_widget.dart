import 'package:e_commerce_getx/controller/onboarding_controller.dart';
import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/dimensions.dart';
import '../custom_button_widget.dart';

class ButtonsWidget extends GetView<OnboardingController> {
  const ButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GetBuilder<OnboardingController>(
            builder: (controller) =>
                CustomButtonWidget(
                  onTap: () {
                    controller.next();
                  },
                  widthButton: width(context) * 0.75,
                  heightButton: 50,
                  color: buttonColor,
                  borderRadius: 10,
                  text: controller.currentPage == 0 ? "6".tr : '7'.tr,
                  textColor: Colors.white,
                  fontSize: height(context) * 0.023,
                  fontWeight: FontWeight.w500,
                  fontFamily: Theme.of(context).textTheme.titleLarge!.fontFamily,
                ),
          ),
          CustomButtonWidget(
            onTap: () {
              controller.onPressSkip();
            },
            widthButton: width(context) * 0.75,
            heightButton: 50,
            borderRadius: 10,
            text: '8'.tr,
            textColor: Colors.black,
            fontSize: height(context) * 0.023,
            fontWeight: FontWeight.w400,
            fontFamily: Theme
                .of(context)
                .textTheme
                .displayLarge!
                .fontFamily,
          ),
        ],
      ),
    );
  }
}
