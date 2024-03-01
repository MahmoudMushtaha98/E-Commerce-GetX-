import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services extends GetxService{

  late SharedPreferences sharedPreferences;


  Future<Services> getData()async{
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

}


iniServices()async{
  await Get.putAsync(() => Services().getData());
}


bool emailValid(String email) {
  final bool emailMatch = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  return emailMatch;
}

bool passValid(String pass) {
  final bool passChick = (pass.length < 6) ? false : true;
  return passChick;
}