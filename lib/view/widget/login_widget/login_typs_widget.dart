
import 'package:flutter/material.dart';

import '../../../core/constant/dimensions.dart';
import '../cercle_widget.dart';

class LogInTypesWidget extends StatelessWidget {
  const LogInTypesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleWidget(
            width: width(context) * 0.1,
            url: 'assets/images/Google.webp',
          ),
          SizedBox(
            width: width(context) * 0.05,
          ),
          CircleWidget(
            width: width(context) * 0.1,
            url: 'assets/images/FaceBook.png',
          ),
          SizedBox(
            width: width(context) * 0.05,
          ),
          CircleWidget(
            width: width(context) * 0.1,
            url: 'assets/images/twiter.webp',
          )
        ],
      ),
    );
  }
}


