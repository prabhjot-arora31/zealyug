import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:zealyug/home/home.dart';

import '../notifications/notifications.dart';

class userProfile extends StatefulWidget {
  const userProfile({Key? key}) : super(key: key);

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
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
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
