import 'package:flutter/material.dart';

import '../about/about.dart';

class zealYug extends StatelessWidget {
  const zealYug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
            "ZealYug",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => About()))
        },
        child: ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
        ),
      ),
      GestureDetector(
        child: ListTile(
          leading: Icon(Icons.vaccines),
          title: Text("Venture"),
        ),
      ),
      GestureDetector(
        child: ListTile(
          leading: Icon(Icons.leak_remove_outlined),
          title: Text("Level Up"),
        ),
      ),
      GestureDetector(
        child: ListTile(
          leading: Icon(Icons.star_outline_sharp),
          title: Text("For Startup"),
        ),
      ),
    ]));
  }
}
