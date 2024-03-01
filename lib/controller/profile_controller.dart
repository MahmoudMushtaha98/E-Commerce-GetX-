import 'package:get/get.dart';

import '../core/services/services.dart';

class ProfileController extends GetxController{
  String? language = Services().sharedPreferences.getString('lang');

}