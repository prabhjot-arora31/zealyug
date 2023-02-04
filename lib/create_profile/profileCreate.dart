import 'package:flutter/material.dart';

class profileDart extends StatelessWidget {
  const profileDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Quickly create a profile with us!",
            ),
          ],
        ),
      ),
    );
  }
}
