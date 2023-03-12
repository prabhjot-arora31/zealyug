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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: size.width / 15), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.save, size: size.width / 15),
              label: "Saved Jobs"),
          BottomNavigationBarItem(
              icon: Icon(Icons.apple, size: size.width / 15),
              label: "Application"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, size: size.width / 17),
              label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: size.width / 15),
              label: "Profile"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Text("User Profile"),
                            minRadius: size.width / 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good Morning 🖐️",
                                style: TextStyle(fontSize: size.width / 25),
                              ),
                              SizedBox(
                                height: size.height / 100,
                              ),
                              Text(
                                "Andrew Ainsley",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width / 20),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications),
                        )),
                  ],
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                    hintText: "Search for a job or company",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    filled: true,
                    suffixIcon: Icon(Icons.filter),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.width / 18),
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 3)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.width / 18),
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                    // fillColor: Colors.grey.shade200
                  ),
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "See how you can",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 24),
                          ),
                          Text(
                            "find a job quickly!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 24),
                          ),
                          SizedBox(
                            height: size.height / 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Reading more");
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: Text(
                                    "Read more",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                )),
                          )
                        ],
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8CRlKWmwHGLIg8TKbJ_LPpmYPxZvC5Pw6Kg&usqp=CAU",
                        width: size.width / 3,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommendation",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width / 25),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Watching all");
                      },
                      child: Text("See All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width / 25,
                              color: Colors.blue)),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width / 20),
                            border: Border.all(color: Colors.grey)),
                        width: size.width * 0.70,
                        // padding: EdgeInsets.all(15),
                        padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                "assets/images/google.jpg",
                                width: size.width / 10,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "UI/UX Designer",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width / 25),
                                ),
                                SizedBox(
                                  height: size.height / 150,
                                ),
                                Text("Google LLC"),
                                SizedBox(
                                  height: size.height / 37,
                                ),
                                Text("California, United States",style: TextStyle(fontSize: size.width / 28),),
                                SizedBox(
                                  height: size.height / 150,
                                ),
                                Text(
                                  "\$10,000-\$25,000 /month",style: TextStyle(fontWeight: FontWeight.w600,fontSize: size.width / 28,color: Colors.blue)
                                ),
                                SizedBox(
                                  height: size.height / 150,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(size.width / 70),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          color: Colors.grey.shade600,)
                                      ),
                                      child: Text(
                                        "Full Time",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                            fontSize: size.width / 40),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 20,),
                                    Container(
                                      padding: EdgeInsets.all(size.width / 70),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5 ),
                                          border: Border.all(
                                            color: Colors.grey.shade600,)
                                      ),
                                      child: Text(
                                        "Onsite",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: size.width / 40),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.save,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width / 20,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(size.width / 20),
                            border: Border.all(color: Colors.grey)),
                        width: size.width * 0.70,
                        // padding: EdgeInsets.all(15),
                        padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                "assets/images/google.jpg",
                                width: size.width / 10,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "UI/UX Designer",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width / 25),
                                ),
                                SizedBox(
                                  height: size.height / 150,
                                ),
                                Text("Google LLC"),
                                SizedBox(
                                  height: size.height / 37,
                                ),
                                Text("California, United States",style: TextStyle(fontSize: size.width / 28),),
                                SizedBox(
                                  height: size.height / 150,
                                ),
                                Text(
                                    "\$10,000-\$25,000 /month",style: TextStyle(fontWeight: FontWeight.w600,fontSize: size.width / 28,color: Colors.blue)
                                ),
                                SizedBox(
                                  height: size.height / 150,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(size.width / 70),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Colors.grey.shade600,)
                                      ),
                                      child: Text(
                                        "Full Time",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: size.width / 40),
                                      ),
                                    ),
                                    SizedBox(width: size.width / 20,),
                                    Container(
                                      padding: EdgeInsets.all(size.width / 70),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5 ),
                                          border: Border.all(
                                            color: Colors.grey.shade600,)
                                      ),
                                      child: Text(
                                        "Onsite",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: size.width / 40),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.save,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
