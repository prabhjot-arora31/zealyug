import 'package:flutter/material.dart';
import 'package:zealyug/createPassword/createPassword.dart';
import 'package:zealyug/login/login.dart';
import 'package:zealyug/otp_page/new_otp_page.dart';
import 'package:email_otp/email_otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _email = new TextEditingController();
  bool _rememberMe = false;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController otp = new TextEditingController();
    EmailOTP myauth = new EmailOTP();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 18,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: size.height / 24,
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
                'Create Your Account',
                style: TextStyle(
                  fontSize: size.width / 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height / 30),
              SizedBox(
                width: size.width / 1.15,
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                      child: const Icon(Icons.email, size: 18),
                    ),
                    filled: true,
                    prefixStyle: const TextStyle(
                      fontSize: 5,
                    ),
                    fillColor: Colors.grey.shade100,
                  ),
                ),
              ),
              SizedBox(height: size.height / 40),
              // SizedBox(
              //   width: size.width / 1.15,
              //   child: TextFormField(
              //     obscureText: !_showPassword,
              //     decoration: InputDecoration(
              //       hintText: 'Password',
              //       contentPadding: const EdgeInsets.symmetric(
              //         vertical: 18,
              //       ),
              //       prefixIcon: SizedBox(
              //         width: size.width / 20,
              //         height: size.height / 20,
              //         child: const Icon(Icons.lock, size: 18),
              //       ),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(size.width / 18),
              //         borderSide: BorderSide.none,
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(size.width / 18),
              //         borderSide: const BorderSide(
              //           color: Colors.blue,
              //         ),
              //       ),
              //       suffixIcon: IconButton(
              //         icon: SizedBox(
              //           width: size.width / 20,
              //           height: size.height / 20,
              //           child: Icon(
              //             _showPassword
              //                 ? Icons.visibility
              //                 : Icons.visibility_off,
              //             size: 18,
              //           ),
              //         ),
              //         onPressed: () {
              //           setState(() {
              //             _showPassword = !_showPassword;
              //           });
              //         },
              //       ),
              //       filled: true,
              //       fillColor: Colors.grey.shade100,
              //     ),
              //   ),
              // ),
              SizedBox(height: size.height / 100),
              // Padding(
              //   padding: const EdgeInsets.only(right: 20.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Theme(
              //         data: ThemeData(
              //           unselectedWidgetColor: Colors.purple.shade300,
              //         ),
              //         child: Checkbox(
              //           value: _rememberMe,
              //           activeColor: Colors.blue,
              //           checkColor: Colors.white,
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5),
              //             side: const BorderSide(
              //               color: Colors.deepPurpleAccent,
              //             ),
              //           ),
              //           onChanged: (value) {
              //             setState(() {
              //               _rememberMe = value!;
              //             });
              //           },
              //         ),
              //       ),
              //       const Text(
              //         'Remember me',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: size.height / 140),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 16,
                child: ElevatedButton(
                  onPressed: () async {
                    myauth.setConfig(
                        appEmail: "prabhjotarora99@gmail.com",
                        appName: "ZealYug",
                        userEmail: _email.text,
                        otpLength: 6,
                        otpType: OTPType.digitsOnly);
                    if (await myauth.sendOTP() == true) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("OTP has been sent"),
                        backgroundColor: Colors.green,
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Oops. OTP send failed"),
                        backgroundColor: Colors.red,
                      ));
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (ctx)=> OTP(email: _email)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),
              SizedBox(height: size.height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width / 2.5,
                    child: TextFormField(
                      controller: otp,
                      decoration: InputDecoration(
                        hintText: 'OTP',
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 18),
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
                          child: const Icon(Icons.lock, size: 18),
                        ),
                        filled: true,
                        prefixStyle: const TextStyle(
                          fontSize: 5,
                        ),
                        fillColor: Colors.grey.shade100,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width / 15,),
                  SizedBox(
                    width: size.width / 3,
                    height: size.height / 16,
                    child: ElevatedButton(
                      onPressed: () async {
                        print(otp.text);
                        if (await myauth.verifyOTP(otp: otp.text) == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("OTP is verified")));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => createPassword()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Invalid OTP")));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const Text('Verify OTP'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height / 40),

              SizedBox(height: size.height / 100),

              SizedBox(height: size.height / 140),

              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: const <Widget>[
                  Flexible(
                    child: Divider(
                      indent: 20,
                      endIndent: 5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or continue with',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Divider(
                      endIndent: 20,
                      indent: 5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height / 16,
                    width: size.width / 5.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade200, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Image.asset('assets/images/google.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 16,
                    width: size.width / 5.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Image.asset('assets/images/apple.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 16,
                    width: size.width / 5.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Image.asset('assets/images/facebook.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height / 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Have an account?"),
                    SizedBox(width: 5),
                    Text(
                      " Login👋",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
