import 'package:e_commerce_getx/controller/services_controller.dart';
import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/const_color.dart';
import '../../core/constant/services_card_data.dart';
import '../widget/services_widget/card_services_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ServicesController controller = Get.put(ServicesController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello, Mahmoud!',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: width(context) * 0.9,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextFormField(
                  controller: controller.controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                    ),
                    label: Text(
                      'Search',
                      style: TextStyle(
                          inherit: false, color: Colors.grey.shade600),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: grayColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: grayColor)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: grayColor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: grayColor)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width(context) * 0.05, right: width(context) * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Services',
                  style: TextStyle(
                      inherit: false,
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'See More',
                      style: TextStyle(
                          inherit: false,
                          color: grayColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: grayColor,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(3, (index) {
            return Column(
              children: [
                CardServicesWidget(
                  path: servicesCardModel[index].path,
                  text: servicesCardModel[index].text,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          }),
          Padding(
            padding: EdgeInsets.only(
                left: width(context) * 0.05, top: 20, bottom: 20),
            child: const Text(
              'What Do You Need?',
              style: TextStyle(
                  inherit: false,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: servicesCardModel.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10,),
              itemBuilder: (context, index) => LastServiceCardWidget(
                  path: servicesCardModel[index].path,
                  text: servicesCardModel[index].text),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class LastServiceCardWidget extends StatelessWidget {
  const LastServiceCardWidget({
    super.key,
    required this.path,
    required this.text,
  });

  final String path;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context) * 0.3,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: buttonColor.withOpacity(0.7),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    border: Border.all(color: Colors.black, width: 2)),
                child: Image.asset(path),
              )),
          Expanded(
              child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: buttonColor.withOpacity(0.7),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
