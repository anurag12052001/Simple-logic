import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplelogic/screens/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () => Get.to(SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/splash/chatSplash.gif"),
            // fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
