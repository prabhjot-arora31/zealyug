import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zealyug/home/home.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();

  // _OTPState() {}
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    const unSuccessSnackbar = SnackBar(
      backgroundColor: Colors.red,
      content: Text("Registration unsuccessful"),
    );
    const SuccessSnackbar = SnackBar(
      backgroundColor: Colors.green,
      content: Text("Registration Successful"),
    );

    var number = "";
    var number_controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Signup page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: number_controller,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  hintText: "Enter Phone",
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    // borderSide: BorderSide.merge(
                    //   BorderSide(),
                    //   BorderSide(),
                    // ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.red,
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () async {
                    print("Sending OTP");
                  },
                  child: Text("Send OTP"),
                ),
              ),

              // GestureDetector(
              //   onTap: () => {
              //     setState(() {
              //       print('Printing : ' + _name.text);
              //       print_name = _name.text;
              //     })
              //   },
              //   child: Text("Sign Up"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
