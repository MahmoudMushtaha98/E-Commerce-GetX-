import 'package:flutter/material.dart';

import '../../../core/constant/dimensions.dart';

class SpecialForYouWidget extends StatelessWidget {
  const SpecialForYouWidget({
    super.key,
    required this.path,
    required this.title,
    required this.subTitle,
  });

  final String path;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width(context) * 0.7,
          height: 150,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: Image.asset(fit: BoxFit.cover, path),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 150,
          width: width(context) * 0.7,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5)
                  ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                subTitle,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}
