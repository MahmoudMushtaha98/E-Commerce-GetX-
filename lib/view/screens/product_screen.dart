import 'package:e_commerce_getx/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/favorite_widget/favorite_card_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${'Hello, '.tr} Mahmoud !',
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: homeController.favorite.isNotEmpty
          ? GetBuilder<HomeController>(
              builder: (controller) => ListView.separated(
                itemCount: homeController.favorite.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemBuilder: (context, index) => FavoriteCardWidget(
                  productModel: homeController.favorite[index],
                ),
              ),
            )
          : Center(
              child: Text(
                'No Favorite Items ...',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
    );
  }
}
