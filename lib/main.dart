import 'package:flutter/material.dart';
import 'package:zealyug/login/login.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Lato'),
          bodyText2: TextStyle(fontFamily: 'Lato'),
          headline1: TextStyle(fontFamily: 'Lato', fontSize: 28.0),
          headline2: TextStyle(fontFamily: 'Lato', fontSize: 24.0),
          headline3: TextStyle(fontFamily: 'Lato', fontSize: 20.0),
          headline4: TextStyle(fontFamily: 'Lato', fontSize: 18.0),
          headline5: TextStyle(fontFamily: 'Lato', fontSize: 16.0),
          headline6: TextStyle(fontFamily: 'Lato', fontSize: 14.0),
          subtitle1: TextStyle(fontFamily: 'Lato', fontSize: 16.0),
          subtitle2: TextStyle(fontFamily: 'Lato', fontSize: 14.0),
          button: TextStyle(fontFamily: 'Lato', fontSize: 16.0),
          caption: TextStyle(fontFamily: 'Lato', fontSize: 12.0),
          overline: TextStyle(fontFamily: 'Lato', fontSize: 10.0),
        ),
      ),
      home: Login(),
    );
  }
}
