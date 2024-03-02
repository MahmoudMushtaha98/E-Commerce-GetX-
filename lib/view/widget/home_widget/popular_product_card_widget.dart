import 'package:e_commerce_getx/controller/home_controller.dart';
import 'package:e_commerce_getx/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';

class PopularProductCardWidget extends GetView<HomeController> {
  const PopularProductCardWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: width(context) * 0.35,
            height: 120,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Image.network(productModel.image),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: width(context) * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  productModel.title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productModel.price,
                      style: TextStyle(
                          fontWeight:
                              Theme.of(context).textTheme.bodySmall!.fontWeight,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          color: Colors.deepOrange),
                    ),
                    GetBuilder<HomeController>(builder: (con) => InkWell(
                      onTap: () {
                        con.addFave(productModel);
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: con.favorite.contains(productModel)
                                ? const Color(0xfffeeae3)
                                : const Color(0xfff4f4f4),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite,
                          color: con.favorite.contains(productModel)
                              ? const Color(0xfffe4a4a)
                              : const Color(0xffdadde3),
                          size: 12,
                        ),
                      ),
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
