import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/app_theme.dart';
import '../services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  late final Services services;

  ThemeData appTheme = english;

  changeLang(String languageCode) async{
    Locale locale = Locale(languageCode);
    await services.sharedPreferences.setString('lang', languageCode);
    appTheme = languageCode.contains('ar') ? arabic : english;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() async{
    services = Get.find();
    try{
      if (services.sharedPreferences.getString('lang')!.contains('ar')) {
        language = const Locale('ar');
        appTheme = arabic;
      } else if (services.sharedPreferences.getString('lang')!.contains('en')) {
        language = const Locale('en');
        appTheme = english;
      }
    }catch(e){
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
