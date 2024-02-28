import 'package:e_commerce_getx/view/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  final keyOne = GlobalKey<FormState>();
  final keyTow = GlobalKey<FormState>();
  final keyThree = GlobalKey<FormState>();
  final keyFour = GlobalKey<FormState>();

  TextEditingController controllerOne = TextEditingController();
  TextEditingController controllerTwo = TextEditingController();
  TextEditingController controllerThree = TextEditingController();
  TextEditingController controllerFore = TextEditingController();

  void continueButton() {
    Get.offAllNamed(LogInScreen.screenRout);
  }
}
