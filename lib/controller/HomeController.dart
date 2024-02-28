import 'package:get/get.dart';

import '../core/services/services.dart';
import '../main.dart';

class HomeController extends GetxController{
  String? language = Services().sharedPreferences.getString('lang');

}