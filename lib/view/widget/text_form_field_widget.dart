import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:e_commerce_getx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class TextFormFieldWidget extends GetView<Services> {
  final double? width;
  final String? hintText;
  final String? label;
  final IconData? suffixIcon;
  final GlobalKey<FormState>? formKey;
  final String? Function(String?)? callback;
  final TextEditingController contr;
  final double? height;
  final bool? obscureText;
  final double? borderRadios;
  final Color? color;
  final IconData? prefixIcon;

  const TextFormFieldWidget(
      {super.key,
      this.prefixIcon,
      this.width,
      this.borderRadios,
      this.hintText,
      this.label,
      this.suffixIcon,
      this.formKey,
      this.callback,
      required this.contr,
      this.obscureText,
      this.height,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadios ?? 30),
            color: color),
        child: TextFormField(
          obscureText: obscureText ?? false,
          controller: contr,
          validator: callback,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadios ?? 30),
                borderSide: BorderSide(color: color ?? grayColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadios ?? 30),
                borderSide: BorderSide(color: color ?? grayColor)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadios ?? 30),
                borderSide: BorderSide(color: color ?? grayColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadios ?? 30),
                borderSide: BorderSide(color: color ?? grayColor)),
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
              suffixIcon,
              color: grayColor,
            ),
            prefixIcon: Icon(
              prefixIcon,
              color: grayColor,
            ),
            contentPadding: const EdgeInsets.all(40),
          ),
        ),
      ),
    );
  }
}


