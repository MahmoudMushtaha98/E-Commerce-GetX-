import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../widget/home_widget/category_widget.dart';
import '../widget/home_widget/popular_product_card_widget.dart';
import '../widget/home_widget/see_more_widget.dart';
import '../widget/home_widget/special_for_you_widget.dart';

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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
            child: TextFormFieldWidget(
              prefixIcon: Icons.search,
              label: 'Search Product'.tr,
              contr: TextEditingController(),
              height: 60,
              borderRadios: 20,
              color: const Color(0xfff4f4f4),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 130,
            margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
                color: Color(0xff493299),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'A Summer Surprise'.tr,
                  style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontWeight: FontWeight.w500),
                ),
                Text('Cashback 20%'.tr,
                    style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize)),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                    5,
                    (index) => CategoryWidget(
                          iconData: Icons.flash_on,
                          text: 'Flash Deal'.tr,
                        ))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SeeMoreWidget(
            title: 'Special For You'.tr,
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, index) => SizedBox(
                width: index == 0 ? 0 : width(context) * 0.05,
              ),
              itemBuilder: (context, index) => index == 0
                  ? SizedBox(
                      width: width(context) * 0.05,
                    )
                  : SpecialForYouWidget(
                      path: 'assets/images/Image Banner 2.png',
                      title: 'Smart Phone'.tr,
                      subTitle: '18 Brands'.tr,
                    ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SeeMoreWidget(title: 'Popular Product'.tr),
          const SizedBox(
            height: 25,
          ),
          GetBuilder<HomeController>(
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
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      color: grayColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Container(
                                  width: width(context) * 0.35,
                                  height: 20,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
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
                        if(index == controller.productModel.length-1){
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
          ),
          SizedBox(
            height: height(context) * 0.03,
          ),
        ],
      ),
    );
  }
}
