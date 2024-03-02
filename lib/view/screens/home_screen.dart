import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../widget/home_widget/add_block_widget.dart';
import '../widget/home_widget/categories_list_widget.dart';
import '../widget/home_widget/popular_product_list_widget.dart';
import '../widget/home_widget/search_form_field_widget.dart';
import '../widget/home_widget/see_more_widget.dart';
import '../widget/home_widget/special_for_you_lis_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${'Hello, '.tr} Mahmoud !',
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SearchFormFieldWidget(),
          const SizedBox(
            height: 25,
          ),
          const AddBlockWidget(),
          const SizedBox(
            height: 30,
          ),
          const CategoriesListWidget(),
          const SizedBox(
            height: 25,
          ),
          SeeMoreWidget(
            title: 'Special For You'.tr,
          ),
          const SizedBox(
            height: 25,
          ),
          const SpecialForYouLisWidget(),
          const SizedBox(
            height: 25,
          ),
          SeeMoreWidget(title: 'Popular Product'.tr),
          const SizedBox(
            height: 25,
          ),
          const PopularProductListWidget(),
          SizedBox(
            height: height(context) * 0.03,
          ),
        ],
      ),
    );
  }
}










