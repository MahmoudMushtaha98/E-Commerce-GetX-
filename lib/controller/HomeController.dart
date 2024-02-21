import 'package:get/get.dart';

import '../main.dart';

class HomeController extends GetxController{
  String? language = sharedPreferences.getString('lang');

}