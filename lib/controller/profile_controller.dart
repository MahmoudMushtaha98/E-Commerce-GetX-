import 'package:get/get.dart';

import '../main.dart';

class ProfileController extends GetxController{
  String? language = sharedPreferences.getString('lang');

}