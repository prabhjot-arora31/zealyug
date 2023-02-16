import 'package:flutter/material.dart';
import 'package:zealyug/otp_page/otp.dart';
import 'package:zealyug/signup/new_sign_up.dart';
import 'package:zealyug/signup/sign_up_test.dart';
import 'package:zealyug/signup/signup_real.dart';

import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: newSignUp(),
    );
  }
}
