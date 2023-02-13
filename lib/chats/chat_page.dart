import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#283B71"),
      appBar: AppBar(
        backgroundColor: HexColor("#283B71"),
        title: Text("Chats"),
        elevation: 0.0,
      ),
    );
  }
}
