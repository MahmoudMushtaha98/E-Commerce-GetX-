import 'package:e_commerce_getx/controller/profile_controller.dart';
import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/setting_widget/setting_row_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            const Text(
              'Account',
              style: TextStyle(
                  color: Colors.black,
                  inherit: false,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: width(context)*0.02),
              child: SizedBox(
                width: width(context) * 0.8,
                height: 200,
                child: const Column(
                  children: [
                    Expanded(
                        child: SettingRowWidget(
                      title: 'Mahmoud Mushtaha',
                      subTitle: 'MahmoudMushtaha@gmail.com',
                    )),
                    Divider(),
                    Expanded(
                        child: SettingRowWidget(
                      title: 'Payment',
                      subTitle: '5550 **** **** 4531',
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'App Setting',
              style: TextStyle(
                  color: Colors.black,
                  inherit: false,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: width(context)*0.02),
              child: SizedBox(
                width: width(context) * 0.8,
                height: 200,
                child: const Column(
                  children: [
                    Expanded(
                        child: SettingRowWidget(
                      title: 'Language',
                      subTitle: 'English',
                    )),
                    Divider(),
                    Expanded(
                        child: SettingRowWidget(
                      title: 'Mode',
                      subTitle: 'Light',
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
