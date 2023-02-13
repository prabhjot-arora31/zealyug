import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:zealyug/home/home.dart';

import '../userProfile/userProfile.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: HexColor("#283B71"),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Home()))
              },
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => Notifications()))
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => userProfile()))
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            label: "",
          ),
        ],
      ),
      backgroundColor: HexColor("#283B71"),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: HexColor("#283B71"),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
