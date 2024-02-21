import 'package:get/get.dart';

class HomeNavigationBarController extends GetxController{
  int currentIndex = 0;

  void onChange(int index){
    currentIndex =index;
    update();
  }
}