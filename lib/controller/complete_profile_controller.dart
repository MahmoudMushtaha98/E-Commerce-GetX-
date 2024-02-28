import 'package:e_commerce_getx/view/screens/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CompleteProfileController extends GetxController{

  final fNameKey = GlobalKey<FormState>();
  final lNameKey = GlobalKey<FormState>();
  final phoneKey = GlobalKey<FormState>();
  final addressKey = GlobalKey<FormState>();
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  void continueButton(){
    Get.toNamed(OTPScreen.screenRoute);
  }
}