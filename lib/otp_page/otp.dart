import 'package:flutter/material.dart';
import 'package:zealyug/home/home.dart';
import 'package:zealyug/login/login.dart';
import 'package:zealyug/otp_page/otp.dart';
import 'package:zealyug/signup/signup.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            // color: Color.fromARGB(255, 114, 183, 215),
            // color: Colors("#6b6db5"),
            color: Color.fromRGBO(54, 22, 25, 1),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow(
                          color: Color.fromRGBO(3, 1, 2, 1),
                          offset: Offset(15, 15),
                          blurRadius: 7),
                    ],
                    borderRadius: BorderRadius.circular(30)),
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height / 1.8,
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Enter the received OTP",
                        style: TextStyle(
                          letterSpacing: 2,
                          shadows: [
                            Shadow(
                                blurRadius: 10,
                                color: Color.fromRGBO(3, 1, 2, 1),
                                offset: Offset(4, 3)),
                          ],
                          color: Color.fromRGBO(3, 1, 2, 1),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      const TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Enter OTP",
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(3, 1, 2, 1),
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      GestureDetector(
                        onTap: () => {
                          print("Sending OTP"),
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => const Home()))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            // color: Colors.blue,
                            color: Color.fromRGBO(3, 1, 2, 1),
                          ),
                          child: const Center(
                            child: const Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.007,
                      ),
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
