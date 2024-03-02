import 'package:e_commerce_getx/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';
import 'category_widget.dart';

class CategoriesListWidget extends GetView<HomeController> {
  const CategoriesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              controller.categories.length,
              (index) => CategoryWidget(
                    iconData: controller.categories[index].iconData,
                    text: controller.categories[index].text.tr,
                  ))
        ],
      ),
    );
  }
}
