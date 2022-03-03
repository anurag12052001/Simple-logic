import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:simplelogic/screens/chat_screen.dart';
import 'package:simplelogic/screens/signup.dart';
import 'package:simplelogic/screens/widget/widgets.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.to(LoginScreen());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        )),
                    SizedBox(width: 20),
                    TextButton(
                        onPressed: () {
                          Get.to(SignUp());
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 30),
                child: Text(
                  "Welcome Back,",
                  style: TextStyle(fontSize: 45),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Rebbeca",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
                child: textfield("Enter Email", email_controller, false,
                    keyboardType: TextInputType.emailAddress,
                    AutofillHints: [AutofillHints.email]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
                child: textfield("Password", password_controller, true),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/facebook.png",
                      width: 60,
                      height: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/google_plus.png",
                      width: 70,
                      height: 50,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget password?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: MaterialButton(
                  onPressed: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: email_controller.text,
                            password: password_controller.text)
                        .then((value) {
                      Get.to(ChatScreen());
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  },
                  child: arrowbutton(Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
