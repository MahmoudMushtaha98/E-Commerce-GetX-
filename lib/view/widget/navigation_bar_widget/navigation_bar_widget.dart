import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controller/nav_bar_controller.dart';
import 'navigation_button_widget.dart';

class NavigationBarWidget extends GetView<HomeNavigationBarController> {
  const NavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(40),
      child: NavigationBar(
        onDestinationSelected: (value) {
          controller.onChange(value);
        },
        destinations: const [
          NavigationDestination(
            icon: NavButton(
              iconData: Icons.home_outlined,
              index: 0,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: NavButton(
              iconData: Icons.favorite_border,
              index: 1,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: NavButton(
              iconData: Icons.chat_outlined,
              index: 2,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: NavButton(
              iconData: Icons.person_outlined,
              index: 3,
            ),
            label: '',
          ),
        ],
        indicatorColor: Colors.transparent,
        backgroundColor: Colors.black,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
    );
  }
}
