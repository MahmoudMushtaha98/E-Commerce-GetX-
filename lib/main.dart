import 'package:e_commerce_getx/core/localization/translation.dart';
import 'package:e_commerce_getx/view/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/constant/routes.dart';
import 'core/localization/changelocal.dart';

late SharedPreferences sharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  Get.put(LocalController());
  runApp(const MyApp());
}

class MyApp extends GetView<LocalController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      translations: MyTranslation(),
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              bodyMedium: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffa4a3a4)),
            labelLarge: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.bold,
                fontSize: 30),
            labelMedium: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                fontSize: 30),
            displayLarge: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                fontSize: 25),
            displayMedium: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffa4a3a4))
          )),
      initialRoute:
          sharedPreferences.getString('lang') != null
              ? OnboardingScreen.screenRoute
              : null,
      getPages: route,
    );
  }
}
