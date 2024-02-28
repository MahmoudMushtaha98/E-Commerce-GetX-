import 'package:e_commerce_getx/view/screens/navigation_bar.dart';
import 'package:e_commerce_getx/view/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {

  final emailFormKey = GlobalKey<FormState>();
  final passFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void logIn(){
    if(emailFormKey.currentState!.validate() && passFormKey.currentState!.validate()){
      Get.offAllNamed(HomeNavigationBar.screenRoute);
    }
  }

  void signUpScreen(){
    Get.toNamed(SignUpScreen.screenRout);
  }
}
