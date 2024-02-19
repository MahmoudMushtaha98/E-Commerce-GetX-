import 'package:e_commerce_getx/view/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../main.dart';

class LogInController extends GetxController {
  String? language = sharedPreferences.getString('lang');

  final emailFormKey = GlobalKey<FormState>();
  final passFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void logIn(){
    if(emailFormKey.currentState!.validate() && passFormKey.currentState!.validate()){

    }
  }

  void signUpScreen(){
    Get.toNamed(SignUpScreen.screenRout);
  }
}
