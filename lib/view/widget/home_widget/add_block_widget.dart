import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';

class AddBlockWidget extends StatelessWidget {
  const AddBlockWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize)),
        ],
      ),
    );
  }
}
