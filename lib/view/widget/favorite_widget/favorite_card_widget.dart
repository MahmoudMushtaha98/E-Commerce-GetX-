import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../controller/home_controller.dart';
import '../../../core/constant/dimensions.dart';
import '../../../model/product_model.dart';

class FavoriteCardWidget extends GetView<HomeController> {
  const FavoriteCardWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Container(
            height: 250,
            margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
            decoration: const BoxDecoration(
                color: Color(0xfff0f5ff),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModel.title,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        productModel.description,
                        maxLines: 3,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        '\$ ${productModel.price}',
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontFamily,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      controller.addFave(productModel);
                    },
                    child: const Icon(
                      Icons.favorite,
                      color: Color(0xffff0000),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: width(context) * 0.05,
              child: CircleAvatar(
                radius: 90,
                foregroundImage: NetworkImage(productModel.image),
              ))
        ],
      ),
    );
  }
}
