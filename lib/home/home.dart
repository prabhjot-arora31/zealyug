import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:zealyug/about/about.dart';
import 'package:zealyug/chats/chat_page.dart';
import 'package:zealyug/create_post/createPost.dart';
import 'package:zealyug/notifications/notifications.dart';
import 'package:zealyug/userProfile/userProfile.dart';
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
      backgroundColor: HexColor("#283B71"),
      appBar: AppBar(
        backgroundColor: HexColor("#283B71"),
        title: Container(
          color: HexColor("#283B71"),
          child: TextField(
            // style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(10),

                    borderSide: BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(20)),
                iconColor: Colors.white,
                hintText: "Search",
                // prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.white,
                // fillColor: Colors.white,
                hintStyle: TextStyle(color: Colors.white)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Chats()));
              },
              icon: Icon(Icons.message))
        ],
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: HexColor("#283B71"),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () => {},
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
        child: Container(
          color: HexColor("#283B71"),
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
                        color: Colors.white,
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
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Info",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Legal()))
                },
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Legal",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {print("printing")},
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    "support@zealyug.com",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    "+91 0123456789",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(
                    Icons.schedule,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Schedule a call",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
