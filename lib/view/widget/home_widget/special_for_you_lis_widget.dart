import 'package:e_commerce_getx/controller/home_controller.dart';
import 'package:e_commerce_getx/view/widget/home_widget/special_for_you_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';

class SpecialForYouLisWidget extends GetView<HomeController> {
  const SpecialForYouLisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: controller.specialForYouModel.length,
        separatorBuilder: (context, index) => SizedBox(
          width: index == 0 ? 0 : width(context) * 0.05,
        ),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
              left: width(context) * 0.05,
              right: index == controller.specialForYouModel.length - 1
                  ? width(context) * 0.05
                  : 0),
          child: SpecialForYouWidget(
            path: controller.specialForYouModel[index].path,
            title: controller.specialForYouModel[index].title.tr,
            subTitle: controller.specialForYouModel[index].subTitle.tr,
          ),
        ),
      ),
    );
  }
}
