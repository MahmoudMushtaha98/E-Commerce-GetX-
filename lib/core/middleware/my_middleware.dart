import 'package:e_commerce_getx/core/services/services.dart';
import 'package:e_commerce_getx/view/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware{

  Services services = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    bool? check = services.sharedPreferences.getBool('onboarding') ;
    if(check??false){
      return const RouteSettings(name: LogInScreen.screenRout);
    }
    return null;
    }

}