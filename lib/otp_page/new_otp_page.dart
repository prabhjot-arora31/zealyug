import 'package:flutter/material.dart';
import 'package:zealyug/FillProfile/fillProfile.dart';
import 'package:zealyug/createPassword/createPassword.dart';
import 'package:zealyug/jobType/jobType.dart';
import 'package:email_otp/email_otp.dart';


class OTP extends StatefulWidget {

  TextEditingController email = new TextEditingController();
  TextEditingController otp = new TextEditingController();
   OTP({Key? key,required this.email}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  bool _rememberMe = false;
  bool _showPassword = false;
  EmailOTP myauth = EmailOTP();


  @override
  Widget build(BuildContext context) {
    TextEditingController otp1 = new TextEditingController();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text(
                'Enter OTP',
                style: TextStyle(
                  fontSize: size.width / 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height / 30),
              Text("OTP sent to",style: TextStyle(fontSize: size.width * 0.043)),
              SizedBox(height: size.height / 30),
              Text("${widget.email.text}",style: TextStyle(fontSize: size.width * 0.043)),
              // RichText(
              //   text: TextSpan(
              //     children:[ TextSpan(text: "OTP sent to",style: TextStyle(color: Colors.black)),
              //     TextSpan(text: "${widget.email}")
              //     ]
              //   ),
              // ),
              SizedBox(height: size.height / 30),
              Row(
                children: [
                  SizedBox(
                    width: size.width / 1.15,
                    child: TextFormField(
                      controller: otp1,
                      decoration: InputDecoration(
                        hintText: 'OTP',
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
                //  ------------------------------------------------------------------
                  SizedBox(
                    width: size.width / 1.2,
                    height: size.height / 16,
                    child: ElevatedButton(
                      onPressed: () async {
                        if(await myauth.verifyOTP(otp: otp1.text) == true){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("OTP is verified")));
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=> createPassword()));
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid OTP")));
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

              SizedBox(height: size.height / 20),
              SizedBox(height: size.height / 20),

            ],
          ),
        ),
      ),
    );
  }
}
