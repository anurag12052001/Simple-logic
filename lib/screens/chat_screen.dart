import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Chat"),
      ),
      body: Container(
          color: Colors.tealAccent,
          child: ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
