import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:simplelogic/screens/login.dart';
import 'package:simplelogic/screens/widget/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isloading = false;
  final formKey = GlobalKey<FormState>();
  var error = false;
  TextEditingController email_controller = new TextEditingController();
  TextEditingController pwd_controller = new TextEditingController();
  TextEditingController confPwd_controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: isloading
            ? Container(
                child: Center(child: CircularProgressIndicator()),
              )
            : SingleChildScrollView(
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
                    Form(
                      key: formKey,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 30),
                            child: Text(
                              "Hello",
                              style: TextStyle(fontSize: 45),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 10),
                            child: Text(
                              "Beautiful,",
                              style: TextStyle(
                                  fontSize: 45, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 70),
                      child: Text(
                        "Enter your information below or login with social media account",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 30),
                      // child: textfield(
                      //   "Enter Email", email_controller, false,
                      //   keyboardType: TextInputType.emailAddress,
                      //   AutofillHints: [AutofillHints.email],
                      //   // GetUtils: GetUtils.isEmail(email_controller.text),
                      // ),
                      child: textfield("Enter Email", email_controller, false,
                          keyboardType: TextInputType.emailAddress,
                          AutofillHints: [AutofillHints.email]),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 30),
                      child: textfield(
                        "Password", pwd_controller, true,

                        //     Validator: (val) {
                        //   return val.length > 5
                        //       ? null
                        //       : val.length < 8
                        //           ? "please enter under valid password range"
                        //           : "password range is under 8 character";
                        // }),
                        //       GetUtils:
                        //           GetUtils.isLengthBetween(pwd_controller, 5, 8)),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 30),
                      child: textfield(
                        "Password again", confPwd_controller, true,

                        //     GetUtils.isLengthBetween(pwd_controller, 5, 8)
                        //         ? "password is invalid"
                        //         : "password is valid"),
                      ),
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
                          onTap: () async {
                            final googleSignIn = GoogleSignIn();
                            final googleUser = await googleSignIn.signIn();
                            final googleauth = await googleUser!.authentication;
                            final cred = GoogleAuthProvider.credential(
                                accessToken: googleauth.accessToken,
                                idToken: googleauth.idToken);
                            await FirebaseAuth.instance
                                .signInWithCredential(cred);
                            // Get.to(LoginScreen());
                          },
                          child: Image.asset(
                            "assets/images/google_plus.png",
                            width: 70,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 20),
                      child: MaterialButton(
                        onPressed: () {
                          //   setState(() {
                          //     GetUtils.isLengthBetween(pwd_controller, 5, 8);
                          //   });

                          // signMeUp();
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: email_controller.text,
                                  password: pwd_controller.text)
                              .then((value) {
                            // print("Created New Account");
                            // Get.to(LoginScreen());
                          }).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                            Get.to(LoginScreen());
                          });
                        },
                        child: arrowbutton(Colors.redAccent.shade400),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
