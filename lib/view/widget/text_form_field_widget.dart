import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:e_commerce_getx/core/constant/fontTyps.dart';
import 'package:e_commerce_getx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class TextFormFieldWidget extends GetView<Services> {
  final double width;
  final String? hintText;
  final String? label;
  final IconData? iconData;
  final GlobalKey<FormState> formKey;
  final String? Function(String?)? callback;
  final TextEditingController contr;
  final double? height;
  final bool? obscureText;

  const TextFormFieldWidget({
    super.key,
    required this.width,
    this.hintText,
    this.label,
    this.iconData,
    required this.formKey,
    this.callback,
    required this.contr,
    this.obscureText,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SizedBox(
        width: width,
        height: height,
        child: TextFormField(
          obscureText: obscureText ?? false,
          controller: contr,
          validator: callback,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: grayColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: grayColor)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: grayColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: grayColor)),
            label: hintText != null
                ? Text(
                    hintText!,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: grayColor,
                        fontFamily:
                            Theme.of(context).textTheme.bodyLarge!.fontFamily),
                  )
                : null,
            hintText: label,
            hintStyle: TextStyle(
                color: grayColor,
                fontFamily: Theme.of(context).textTheme.bodyLarge!.fontFamily),
            suffixIcon: Icon(
              iconData,
              color: grayColor,
            ),
            contentPadding: const EdgeInsets.all(40),
          ),
        ),
      ),
    );
  }
}

bool emailValid(String email) {
  final bool emailMatch = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  return emailMatch;
}

bool passValid(String pass) {
  final bool passChick = (pass.length < 6) ? false : true;
  return passChick;
}
