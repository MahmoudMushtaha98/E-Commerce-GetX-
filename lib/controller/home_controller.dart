import 'package:dio/dio.dart';
import 'package:e_commerce_getx/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController controller = TextEditingController();

  List<ProductModel> productModel = [];

  bool isLoading = true;

  Future<void> getData() async {
    Dio dio = Dio();
    try {
      productModel.clear();
      final response = await dio.get('https://fakestoreapi.com/products');
      List data = response.data;
      for (var element in data) {
        productModel.add(ProductModel(
            id: element['id'],
            title: element['title'],
            price: element['price'].toString(),
            description: element['description'],
            category: element['category'],
            image: element['image'],
            rating: element['rating'].toString()));
      }
      isLoading = false;
    } catch (e) {
      print(e);
    }
    update();
  }
  @override
  void onInit() async{
    await getData();
    super.onInit();
  }
}
