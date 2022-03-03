import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

Widget appBarMain(BuildContext context) {
  return AppBar();
}

Widget arrowbutton(ButtonColor) {
  return Container(
    height: 70,
    width: 100,
    child: Image.asset(
      "assets/images/right_arrow.png",
      color: Colors.white,
    ),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: ButtonColor,
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

final formKey = GlobalKey<FormState>();

Widget textfield(
  String hint,
  controller,
  bool obscureTextValue, {
  keyboardType,
  prefixIcon,
  AutofillHints,
  Validator,
  formKey,
  ErrorText,
  GetUtils,
  print,
}) {
  return TextFormField(
    key: formKey,
    validator: Validator,
    controller: controller,
    obscureText: obscureTextValue,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: hint,
      errorText: ErrorText,
    ),
    style: TextStyle(fontSize: 18),
  );
}

Widget textbutton(
  String name, {
  Function()? ontap,
  GetUtils,
}) {
  return TextButton(
      // onPressed: () {
      //   Get.to(ontap);
      // },

      onPressed: () => Get.to(ontap),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 18,
        ),
      ));
}
