import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/nav_bar_controller.dart';
import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    required this.iconData,
    super.key,
    required this.index,
  });

  final IconData iconData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeNavigationBarController>(
      builder: (controller) => AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: width(context) * 0.2,
          decoration: BoxDecoration(
              color: controller.currentIndex == index
                  ? buttonColor
                  : Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          )),
    );
  }
}
