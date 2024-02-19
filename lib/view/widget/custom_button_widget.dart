import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/dimensions.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    this.widthButton,
    this.heightButton,
    this.color,
    this.borderRadius,
    this.text,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    required this.onTap,
    this.colors,
    this.start,
    this.end,
    this.borderColor,
    this.imgUrl,
    this.borderWidth,
    this.colorIcon,
    this.svgPath,
    this.padding, this.fontFamily,
  });

  final double? widthButton;
  final double? heightButton;
  final Color? color;
  final Color? colorIcon;
  final double? borderRadius;
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final VoidCallback onTap;
  final List<Color>? colors;
  final AlignmentGeometry? start;
  final AlignmentGeometry? end;
  final Color? borderColor;
  final String? imgUrl;
  final String? svgPath;
  final double? borderWidth;
  final double? padding;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: widthButton ?? width(context) * 0.5,
        height: heightButton ?? height(context) * 0.07,
        decoration: BoxDecoration(
            border: borderColor != null
                ? Border.all(color: borderColor!, width: borderWidth ?? 1)
                : null,
            color: color,
            gradient: colors != null
                ? LinearGradient(
              colors: colors!,
              begin: start ?? Alignment.bottomCenter,
              end: end ?? Alignment.topCenter,
            )
                : null,
            borderRadius:
            BorderRadius.all(Radius.circular(borderRadius ?? 20))),
        child: imgUrl != null || svgPath != null
            ? Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: padding??width(context) * 0.05),
              child: imgUrl != null
                  ? Image.asset(
                imgUrl!,
                width: width(context) * 0.085,
                height: height(context) * 0.06,
              )
                  : SvgPicture.asset(
                svgPath!,
                width: width(context) * 0.1,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                text ?? 'START',
                style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: fontSize ?? height(context) * 0.03,
                    fontWeight: fontWeight ?? FontWeight.bold),
              ),
            ),
          ],
        )
            : Text(
          text ?? 'START',
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? height(context) * 0.03,
              fontWeight: fontWeight ?? FontWeight.bold,fontFamily: fontFamily),
        ),
      ),
    );
  }
}
