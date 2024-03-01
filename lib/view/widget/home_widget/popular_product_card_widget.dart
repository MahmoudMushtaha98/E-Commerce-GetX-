import 'package:flutter/material.dart';

import '../../../core/constant/dimensions.dart';

class PopularProductCardWidget extends StatelessWidget {
  const PopularProductCardWidget({
    super.key,
    required this.path,
    required this.title,
    required this.price,
  });

  final String path;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: width(context) * 0.35,
            height: 120,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Image.network(path),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: width(context) * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          fontWeight:
                              Theme.of(context).textTheme.bodySmall!.fontWeight,
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          color: Colors.deepOrange),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Color(0xfff4f4f4), shape: BoxShape.circle),
                      child: const Icon(
                        Icons.favorite,
                        color: Color(0xffdadde3),
                        size: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
