import 'package:e_commerce_getx/core/localization/translation.dart';
import 'package:e_commerce_getx/core/services/services.dart';
import 'package:e_commerce_getx/view/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/routes.dart';
import 'core/localization/changelocal.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await iniServices();
  Get.put(LocalController());
  runApp(const MyApp());
}

class MyApp extends GetView<LocalController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Services services = Get.find();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      translations: MyTranslation(),
      theme: controller.appTheme,
      getPages: route,
    );
  }
}
