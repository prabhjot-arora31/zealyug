import 'package:flutter/material.dart';
import 'package:zealyug/about/about.dart';
import 'package:zealyug/create_post/createPost.dart';
import 'package:zealyug/zealYug/legal.dart';
import 'package:zealyug/zealYug/zealYug.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ZealYug"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {},
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () => {print("Great yaar")},
              icon: Icon(Icons.person),
            ),
            label: "My Network",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () => {print("Great yaar")},
              icon: Icon(Icons.notifications),
            ),
            label: "Notifications",
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   shape: BeveledRectangleBorder(
      //       borderRadius: BorderRadius.horizontal(
      //           left: Radius.circular(5), right: Radius.circular(20))),
      // onPressed: () => {},
      // child: Row(children: [Icon(Icons.add), Text("Create post")]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => createPost()))
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () => {},
              child: Container(
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
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => zealYug()))
              },
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("Info"),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Legal()))
              },
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("Legal"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Contact Us",
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
                leading: Icon(Icons.email),
                title: Text("support@zealyug.com"),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("+91 0123456789"),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(Icons.schedule),
                title: Text("Schedule a call"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
