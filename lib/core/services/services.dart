import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services extends GetxService{

  late SharedPreferences sharedPreferences;


  Future<Services> getData()async{
    sharedPreferences = await SharedPreferences.getInstance();
    print(sharedPreferences.getString('lang'));
    return this;
  }

}


iniServices()async{
  await Get.putAsync(() => Services().getData());
}

