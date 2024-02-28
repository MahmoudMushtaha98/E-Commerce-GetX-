import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import '../services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  late final Services services;

  changeLang(String languageCode) async{
    Locale locale = Locale(languageCode);
    await services.sharedPreferences.setString('lang', languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() async{
    services = Get.find();
    try{
      if (services.sharedPreferences.getString('lang')!.contains('ar')) {
        language = const Locale('ar');
      } else if (services.sharedPreferences.getString('lang')!.contains('en')) {
        language = const Locale('en');
      }
    }catch(e){
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
