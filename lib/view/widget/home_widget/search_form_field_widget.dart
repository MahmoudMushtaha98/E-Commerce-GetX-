import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimensions.dart';
import '../text_form_field_widget.dart';

class SearchFormFieldWidget extends StatelessWidget {
  const SearchFormFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
      child: TextFormFieldWidget(
        prefixIcon: Icons.search,
        label: 'Search Product'.tr,
        contr: TextEditingController(),
        height: 60,
        borderRadios: 20,
        color: const Color(0xfff4f4f4),
      ),
    );
  }
}
