import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplelogic/screens/chat_screen.dart';
import 'package:simplelogic/screens/messages.dart';
import 'package:simplelogic/screens/model.dart';
import 'package:simplelogic/screens/widget/widgets.dart';

class Conversation_Screen extends StatefulWidget {
  // final User user;

  const Conversation_Screen({
    Key? key,
    // required this.user,
  }) : super(key: key);

  @override
  State<Conversation_Screen> createState() => _Conversation_ScreenState();
}

class _Conversation_ScreenState extends State<Conversation_Screen> {
  var Messages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: BackButton(),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        color: Colors.lightBlue.shade900,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(ChatScreen());
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  imgContainer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Modi",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 20,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Online",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imgContainer(),
                  Column(children: [
                    const Text(
                      "Modi",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    message_container("Hi Faris"),
                  ]),
                  SizedBox(
                    width: 120,
                    height: 100,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 250),
              child: message_container("Hello Modi ji.."),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 260),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imgContainer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Modi",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      message_container("i just wanna ask you something"),
                      SizedBox(
                        height: 10,
                      ),
                      message_container("please mail all the details"),
                      SizedBox(
                        height: 10,
                      ),
                      message_container("Hum aa rhe hai"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 700, left: 10, right: 10),
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Write your message",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 140,
                        ),
                        Container(
                          height: 30,
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.red.shade500,
                          //   ),
                          //   shape: BoxShape.circle,
                          // ),
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  "Message sent",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ));
                            },
                            child: Image.asset(
                              "assets/send.png",
                              height: 20,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
