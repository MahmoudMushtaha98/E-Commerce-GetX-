import 'package:flutter/material.dart';

import '../../../core/constant/const_color.dart';
import '../../../core/constant/dimensions.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            'See More',
            style: TextStyle(
                inherit: false,
                color: grayColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
