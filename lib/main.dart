import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zealyug/onboardings.dart/lists.dart';
import 'package:zealyug/onboardings.dart/main_screen.dart';
import 'package:zealyug/onboardings.dart/onboardscreens.dart';

void main() {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
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
      home: OnboardingSlider(),
    );
  }
}
