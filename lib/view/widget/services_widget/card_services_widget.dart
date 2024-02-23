
import 'package:flutter/material.dart';

import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';

class CardServicesWidget extends StatelessWidget {
  const CardServicesWidget({
    super.key,
    required this.path,
    required this.text,
  });

  final String path;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width(context) * 0.9,
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black, buttonColor.withOpacity(0.5)]),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  spreadRadius: 0.2,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: buttonColor.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: Image.asset(
                        path,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
