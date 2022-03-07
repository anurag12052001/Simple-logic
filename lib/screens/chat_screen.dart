import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplelogic/screens/conversation.dart';
import 'package:simplelogic/screens/messages.dart';
import 'package:simplelogic/screens/widget/widgets.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> images = [
    "assets/modi.jpg",
    "assets/obama.jpg",
    "assets/Robert.jpg",
    "assets/girl.jpg",
    "assets/sharukh.jpg",
    "assets/girl2.jpg",
    "assets/ambani.jpg",
  ];

  // List<String> MsgArr = [
  //   "Hum aa rhe hai",
  //   "Hey, Howz you doing?",
  //   "That's awesome",
  //   "Wow, buddy",
  //   "Buddy, where are you?",
  //   "Hey!",
  //   "Bhai deal done",
  // ];
  // List<String> Date_timeArr = [
  //   "11:00 AM",
  //   "05:00 AM",
  //   "Yesterday",
  //   "Yesterday",
  //   "Yesterday",
  //   "2 days ago",
  //   "2 days ago",
  // ];
  TextEditingController search_msg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.lightBlue.shade900,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
              ),
              child: Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "Meowsenger",
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 224, 224),
                            // color: Colors.grey.shade300,
                            fontFamily: "Adobe Heiti Std R",
                            fontWeight: FontWeight.w900,
                            fontSize: 32),
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                      height: 10,
                    ),
                    const Icon(
                      Icons.settings,
                      size: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                      ),
                      child: Container(
                        height: 60,

                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // width: ,
                        child: TextField(
                          controller: search_msg,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                          decoration: const InputDecoration(
                              hintText: "Search your messages",
                              contentPadding: EdgeInsets.only(top: 15, left: 5),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 50,
                              ),
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(Conversation_Screen());
                    },
                    child: ListView.builder(
                        itemCount: chat.length,
                        itemBuilder: (context, index) {
                          final Message chats = chat[index];
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.red.shade500,
                                    ),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(chats.sender.image),
                                    ),
                                  ),
                                  // child: Image.asset(images[index]),
                                ),
                                Container(
                                  width: 200,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        chats.sender.name,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        chats.text,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  chats.time,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
