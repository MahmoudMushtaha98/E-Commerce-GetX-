import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../main.dart';

class CompleteProfileController extends GetxController{

  String? language = sharedPreferences.getString('lang');


  final fNameKey = GlobalKey<FormState>();
  final lNameKey = GlobalKey<FormState>();
  final phoneKey = GlobalKey<FormState>();
  final addressKey = GlobalKey<FormState>();
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

}