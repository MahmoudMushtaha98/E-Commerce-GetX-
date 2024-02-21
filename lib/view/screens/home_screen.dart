import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/HomeController.dart';
import '../widget/home_widget/categories_widget.dart';
import '../widget/home_widget/product_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/images/Start.png',
                    height: 190,
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SizedBox(
                width: width(context) * 0.9,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriesWidget(
                      iconData: Icons.shopping_bag_outlined,
                      text: 'Product'.tr,
                    ),
                    CategoriesWidget(
                      iconData: Icons.settings,
                      text: 'Services'.tr,
                    ),
                    CategoriesWidget(
                      iconData: Icons.shopping_cart_outlined,
                      text: 'Market'.tr,
                    ),
                    CategoriesWidget(
                      iconData: Icons.restaurant,
                      text: 'Restaurant'.tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
            child: Divider(
              indent: width(context) * 0.05,
              endIndent: width(context) * 0.05,
            ),
          ),
          Column(
            children: [
              SizedBox(
                  width: width(context) * 0.9,
                  child: const Text(
                    'Some Product',
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ProductWidget(),
                      SizedBox(
                        width: 20,
                      ),
                      ProductWidget(),
                      SizedBox(
                        width: 20,
                      ),
                      ProductWidget(),
                      SizedBox(
                        width: 20,
                      ),
                      ProductWidget(),
                      SizedBox(
                        width: 20,
                      ),
                      ProductWidget(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}


