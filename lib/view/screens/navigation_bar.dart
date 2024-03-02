import 'package:e_commerce_getx/controller/nav_bar_controller.dart';
import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/screens/product_screen.dart';
import 'package:e_commerce_getx/view/screens/profile_screen.dart';
import 'package:e_commerce_getx/view/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/navigation_bar_widget/navigation_bar_widget.dart';
import 'home_screen.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  static const String screenRoute = '/home-nav';

  @override
  Widget build(BuildContext context) {
    Get.put(HomeNavigationBarController());
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: width(context) * 0.03,
            right: width(context) * 0.03,
            bottom: width(context) * 0.03),
        child: const NavigationBarWidget(),
      ),
      body: GetBuilder<HomeNavigationBarController>(
        builder: (controller) {
          return [
            const HomeScreen(),
            const FavoriteScreen(),
            const ServicesScreen(),
            const ProfileScreen(),
          ][controller.currentIndex];
        },
      ),
    );
  }
}
