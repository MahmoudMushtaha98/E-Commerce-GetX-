import 'package:e_commerce_getx/controller/otp_controller.dart';
import 'package:e_commerce_getx/core/constant/const_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class OTPTextField extends GetView<OTPController> {
  const OTPTextField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child:  Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OTPTextFormField(con: controller.controllerOne,),
            OTPTextFormField(con: controller.controllerTwo),
            OTPTextFormField(con: controller.controllerThree),
            OTPTextFormField(con: controller.controllerFore),
          ],
        ),
      ),
    );
  }
}

class OTPTextFormField extends StatelessWidget {
  const OTPTextFormField( {required this.con,
    super.key,
  });

final TextEditingController con;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        controller: con,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return null;
        },
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: grayColor),
              borderRadius: BorderRadius.circular(20.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: grayColor))),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
        keyboardType: const TextInputType.numberWithOptions(),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
