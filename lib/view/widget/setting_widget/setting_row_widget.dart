import 'package:flutter/material.dart';

import '../../../core/constant/dimensions.dart';

class SettingRowWidget extends StatelessWidget {
  const SettingRowWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width(context) * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width(context) * 0.75,
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Color(0xff494949),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      inherit: false),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width(context) * 0.75,
                child: Text(
                  subTitle,
                  style: const TextStyle(
                      color: Color(0xff979797),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      inherit: false),
                ),
              ),
            ],
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xff979797),
        )
      ],
    );
  }
}