import 'package:e_commerce_getx/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  String? language = sharedPreferences.getString('lang');
  final emailKey = GlobalKey<FormState>();
  final passKey = GlobalKey<FormState>();
  final rePasswordKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController rePassController = TextEditingController();
}