import 'package:dio/dio.dart';
import 'package:e_commerce_getx/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController controller = TextEditingController();

  List<ProductModel> productModel = [];

  bool isLoading = true;
  List<ProductModel> favorite = [];
  int dataId = 1;

  Future<void> indexIncrement() async {
    if (dataId <= 20) {
      for (int counter = 0; counter < 4; counter++) {
        await getData(dataId);
        dataId++;
      }
    }
  }

  void addFave(ProductModel productModel) {
    if (favorite.contains(productModel)) {
      favorite.remove(productModel);
    } else {
      favorite.add(productModel);
    }
    update();
  }

  Future<void> getData(int id) async {
    Dio dio = Dio();
    try {
      final response = await dio.get('https://fakestoreapi.com/products/$id');
      Map data = response.data;
      ProductModel newProduct = ProductModel(
        id: data['id'],
        title: data['title'],
        price: data['price'].toString(),
        description: data['description'],
        category: data['category'],
        image: data['image'],
        rating: data['rating'].toString(),
      );
      productModel.add(newProduct);
      isLoading = false;
      update();
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() async {
    productModel.clear();
    await indexIncrement();
    super.onInit();
  }
}
