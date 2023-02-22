import 'package:flutter/material.dart';
import 'package:zealyug/jobType/jobType.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  bool _rememberMe = false;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height / 8,
              ),
              Container(
                height: size.width / 4,
                width: size.width / 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: size.height / 25),
              Text(
                'Enter the received OTP',
                style: TextStyle(
                  fontSize: size.width / 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.1),
              SizedBox(
                width: size.width / 1.15,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Otp',
                    contentPadding: const EdgeInsets.symmetric(vertical: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        size.width / 18,
                      ),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.width / 18),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    prefixIcon: SizedBox(
                      width: size.width / 20,
                      height: size.height / 20,
                      child: const Icon(Icons.phone, size: 18),
                    ),
                    filled: true,
                    prefixStyle: const TextStyle(
                      fontSize: 5,
                    ),
                    fillColor: Colors.grey.shade100,
                  ),
                ),
              ),
              // SizedBox(height: size.height / 100),
              SizedBox(height: size.height * 0.1),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 16,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => jobType()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),
              SizedBox(height: size.height / 40),

              SizedBox(height: size.height / 20),

            ],
          ),
        ),
      ),
    );
  }
}
