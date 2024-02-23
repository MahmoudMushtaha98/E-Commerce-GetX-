class ServicesCardModel {
  final String path;
  final String text;

  ServicesCardModel({required this.path, required this.text});
}



List<ServicesCardModel> servicesCardModel = [
  ServicesCardModel(path: 'assets/images/Car-Wash.png', text: 'Car Wash'),
  ServicesCardModel(path: 'assets/images/Clean-pool.png', text: 'Clean Pool'),
  ServicesCardModel(path: 'assets/images/House-Clean.png', text: 'House Clean'),
  ServicesCardModel(path: 'assets/images/Moving furniture.png', text: 'Moving Furniture'),
];