import 'package:flutter/material.dart';
import 'package:zealyug/FillProfile/fillProfile.dart';
import 'package:zealyug/home/home.dart';
import 'dart:async';

class createPassword extends StatefulWidget {
  const createPassword({Key? key}) : super(key: key);

  @override
  State<createPassword> createState() => _createPasswordState();
}

class _createPasswordState extends State<createPassword> {
  bool _showPassword = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: size.height / 18,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Text(
                    "Create New Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: size.width / 20),
                  )
                ],
              ),
              SizedBox(
                // height: size.height / 24,
                height: size.height / 50,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your New Password",
                      style: TextStyle(
                          fontSize: size.width / 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height / 30),
              SizedBox(
                width: size.width / 1.15,
                child: TextFormField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                    prefixIcon: SizedBox(
                      width: size.width / 20,
                      height: size.height / 20,
                      child: const Icon(Icons.lock, size: 18),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.width / 18),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.width / 18),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: SizedBox(
                        width: size.width / 20,
                        height: size.height / 20,
                        child: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 18,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                  ),
                ),
              ),
              SizedBox(height: size.height / 30),
              SizedBox(
                width: size.width / 1.15,
                child: TextFormField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    hintText: 'Retype Password',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                    prefixIcon: SizedBox(
                      width: size.width / 20,
                      height: size.height / 20,
                      child: const Icon(Icons.lock, size: 18),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.width / 18),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.width / 18),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: SizedBox(
                        width: size.width / 20,
                        height: size.height / 20,
                        child: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 18,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                  ),
                ),
              ),
              SizedBox(height: size.height / 100),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.purple.shade300,
                      ),
                      child: Checkbox(
                        value: _rememberMe,
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                      ),
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 15,
              ),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 16,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              "Redirecting to the Home page!",),backgroundColor: Colors.green,),
                    );
                    Future.delayed(const Duration(milliseconds: 2000), () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => Home()));
                      });
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
