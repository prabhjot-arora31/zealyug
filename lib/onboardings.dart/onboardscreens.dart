import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;
  final VoidCallback onNext;
  final Color titleColor;

  const OnboardingScreen({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.onNext,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height / 28),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: size.height / 12),
            SizedBox(
              width: size.width / 1.2,
              height: size.height / 18,
              child: ElevatedButton(
                onPressed: onNext,
                child: const Text('Next'),
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shadowColor: Colors.blueAccent,
                    backgroundColor: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
