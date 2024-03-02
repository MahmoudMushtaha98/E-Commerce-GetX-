import 'package:e_commerce_getx/view/widget/home_widget/popular_product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';

class PopularProductListWidget extends StatelessWidget {
  const PopularProductListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => SizedBox(
        height: 200,
        child: controller.isLoading
            ? ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            width: width(context) * 0.35,
                            height: 120,
                            decoration: BoxDecoration(
                                color: grayColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                          ),
                          Container(
                            width: width(context) * 0.35,
                            height: 20,
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                color: grayColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                          ),
                          Container(
                            width: width(context) * 0.35,
                            height: 20,
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                color: grayColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                          ),
                        ],
                      ),
                    ),
                itemCount: 4)
            : ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == controller.productModel.length - 1 &&
                      controller.dataId > 4) {
                    controller.indexIncrement();
                  }
                  return index != 0
                      ? InkWell(
                          onTap: () async {},
                          child: PopularProductCardWidget(
                            productModel: controller.productModel[index],
                          ),
                        )
                      : SizedBox(
                          width: width(context) * 0.05,
                        );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: index == 0 ? 0 : width(context) * 0.03,
                    ),
                itemCount: controller.productModel.length),
      ),
    );
  }
}
