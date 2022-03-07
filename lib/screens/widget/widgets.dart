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
  textfieldcolor,
  // var GetUtils,
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
    style: TextStyle(
      fontSize: 18,
    ),
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

Widget message_container(String msg) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white30,

      borderRadius: BorderRadius.circular(40),
      // border: Border.all(
      //   color: Colors.red.shade500,
      // ),
    ),
    child: Text(
      msg,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}

Widget imgContainer() {
  return Container(
    height: 60,
    width: 80,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.lightBlue.shade300,
      ),
      shape: BoxShape.circle,
      image: const DecorationImage(
        image: const AssetImage("assets/modi.jpg"),
      ),
    ),
  );
}
