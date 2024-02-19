import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class LocalController extends GetxController {
  Locale? language;


  changeLang(String languageCode) async{
    Locale locale = Locale(languageCode);
    await sharedPreferences.setString('lang', languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() async{
    try{
      SharedPreferences sharedLang = await SharedPreferences.getInstance();
      if (sharedLang.getString('lang')!.contains('ar')) {
        language = const Locale('ar');
      } else if (sharedLang.getString('lang')!.contains('en')) {
        language = const Locale('en');
      }
    }catch(e){
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
