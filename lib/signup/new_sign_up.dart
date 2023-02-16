import 'package:flutter/material.dart';

class newSignUp extends StatefulWidget {
  const newSignUp({Key? key}) : super(key: key);

  @override
  State<newSignUp> createState() => _newSignUpState();
}

class _newSignUpState extends State<newSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text("Logo"),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKUK9jtk09hRScUL9p0VQEFakaDGbx2SFtW-sGAY0&s",
                // fit: BoxFit.contain,
              ),
              Text(
                "Create New Account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Phone",
                  icon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Text(
                "or continue with",
                style: TextStyle(fontSize: 16),
              ),
              Container(
                color: Colors.white,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: GestureDetector(
                      onTap: () {
                        print("Signing in from google");
                      },
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjWiS07fm1g8N7EVChukk-gaJMxIPPe0ik0A&usqp=CAU"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: GestureDetector(
                      onTap: () {
                        print("Signing in from apple");
                      },
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp9KnTKxFt6I6NYa15tPm4KVz-yW_1G2OtPg&usqp=CAU"),
                    ),
                  ),
                ]),
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
