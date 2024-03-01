import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/HomeController.dart';
import '../../core/constant/const_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
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
              contr: controller.controller,
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
          SizedBox(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index != 0
                    ? const PopularProductCardWidget(
                        path: 'assets/images/Image Popular Product 1.png',
                        title: 'Wireless Controller For PS4™',
                        price: '\$64.99',
                      )
                    : SizedBox(
                        width: width(context) * 0.05,
                      ),
                separatorBuilder: (context, index) => SizedBox(
                      width: index == 0 ? 0 : width(context) * 0.03,
                    ),
                itemCount: 5),
          ),
          SizedBox(
            height: height(context) * 0.03,
          ),
        ],
      ),
    );
  }
}

class PopularProductCardWidget extends StatelessWidget {
  const PopularProductCardWidget({
    super.key,
    required this.path,
    required this.title,
    required this.price,
  });

  final String path;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context) * 0.35,
          height: 120,
          decoration: const BoxDecoration(
              color: Color(0xfff3f3f3),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Image.asset(path),
        ),
        SizedBox(
          width: width(context) * 0.35,
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                        fontWeight:
                            Theme.of(context).textTheme.bodySmall!.fontWeight,
                        fontSize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                        color: Colors.deepOrange),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Color(0xfff4f4f4), shape: BoxShape.circle),
                    child: const Icon(
                      Icons.favorite,
                      color: Color(0xffdadde3),
                      size: 12,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            'See More',
            style: TextStyle(
                inherit: false,
                color: grayColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class SpecialForYouWidget extends StatelessWidget {
  const SpecialForYouWidget({
    super.key,
    required this.path,
    required this.title,
    required this.subTitle,
  });

  final String path;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width(context) * 0.7,
          height: 150,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: Image.asset(fit: BoxFit.cover, path),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 150,
          width: width(context) * 0.7,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5)
                  ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                subTitle,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.iconData,
    required this.text,
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context) * 0.15,
          height: 60,
          decoration: const BoxDecoration(
              color: Color(0xffffeadc),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Icon(iconData),
        ),
        SizedBox(
          width: width(context) * 0.15,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
