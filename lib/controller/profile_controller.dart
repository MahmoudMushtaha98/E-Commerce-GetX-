import 'package:get/get.dart';

import '../core/services/services.dart';
import '../main.dart';

class ProfileController extends GetxController{
  String? language = Services().sharedPreferences.getString('lang');

}