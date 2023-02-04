import 'package:flutter/material.dart';

class Legal extends StatelessWidget {
  const Legal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                "Legal",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {print("printing")},
            child: ListTile(
              leading: Icon(Icons.security),
              title: Text("Privacy Policy"),
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.verified_user_sharp),
              title: Text("User Agreement"),
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.cookie),
              title: Text("Cookie Policy"),
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.copyright),
              title: Text("Copyright Policy"),
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.commute_rounded),
              title: Text("Community guidelines"),
            ),
          ),
        ],
      ),
    );
  }
}
