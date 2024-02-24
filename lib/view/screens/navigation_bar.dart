import 'package:e_commerce_getx/controller/nav_bar_controller.dart';
import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/screens/product_screen.dart';
import 'package:e_commerce_getx/view/screens/profile_screen.dart';
import 'package:e_commerce_getx/view/screens/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  static const String screenRoute = '/home-nav';

  @override
  Widget build(BuildContext context) {
    Get.put(HomeNavigationBarController());
    return GetBuilder<HomeNavigationBarController>(
      builder: (controller) => Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
              left: width(context) * 0.03,
              right: width(context) * 0.03,
              bottom: width(context) * 0.03),
          child: ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(40),
            child: NavigationBar(
              onDestinationSelected: (value) {
                controller.onChange(value);
              },
              destinations: [
                NavigationDestination(
                  icon: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                      width: width(context) * 0.2,
                      decoration: BoxDecoration(
                          color: controller.currentIndex == 0
                              ? buttonColor
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                        ),
                      )),
                  label: '',
                ),
                NavigationDestination(
                  icon: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: width(context) * 0.2,
                      decoration: BoxDecoration(
                          color: controller.currentIndex == 1
                              ? buttonColor
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                      )),
                  label: '',
                ),
                NavigationDestination(
                  icon: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: width(context) * 0.2,
                      decoration: BoxDecoration(
                          color: controller.currentIndex == 2
                              ? buttonColor
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SvgPicture.asset(
                          'assets/svg/Service.svg',
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      )),
                  label: '',
                ),
                NavigationDestination(
                  icon: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: width(context) * 0.2,
                      decoration: BoxDecoration(
                          color: controller.currentIndex == 3
                              ? buttonColor
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                      )),
                  label: '',
                ),
              ],
              indicatorColor: Colors.transparent,
              backgroundColor: Colors.black,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            ),
          ),
        ),
        body: [
          const HomeScreen(),
          const ProductScreen(),
          const ServicesScreen(),
          const ProfileScreen(),
        ][controller.currentIndex],
      ),
    );
  }
}
