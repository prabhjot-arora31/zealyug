import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:zealyug/home/home.dart';
import 'package:zealyug/signup/signup.dart';
import 'package:zealyug/signup/signup_real.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isAPICallprocess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#283B71"),
        body: ProgressHUD(
          inAsyncCall: isAPICallprocess,
          opacity: 0.3,
          key: UniqueKey(),
          child: Form(
            key: globalFormKey,
            child: _loginUI(context),
          ),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/images/zealyug_logo_update.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    FormHelper.inputFieldWidget(context, "Username", "Username",
                        (onValidateVal) {
                      if (onValidateVal.isEmpty) {
                        return "Username can\'t be empty";
                      }
                      return null;
                    }, (onSavedVal) => {username = onSavedVal},
                        borderFocusColor: Colors.white,
                        borderColor: Colors.white,
                        hintColor: Colors.white,
                        showPrefixIcon: true,
                        prefixIconColor: Colors.white,
                        prefixIcon: Icon(Icons.person),
                        textColor: Colors.white,
                        borderRadius: 10),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    FormHelper.inputFieldWidget(context, "Password", "Password",
                        (onValidateVal) {
                      if (onValidateVal.isEmpty) {
                        return "Password can\'t be empty";
                      }
                      return null;
                    }, (onSavedVal) => {password = onSavedVal},
                        borderFocusColor: Colors.white,
                        borderColor: Colors.white,
                        hintColor: Colors.white,
                        textColor: Colors.white,
                        showPrefixIcon: true,
                        suffixIcon: IconButton(
                          onPressed: () {
                            hidePassword = !hidePassword;
                            setState(() {});
                          },
                          icon: Icon(hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          color: Colors.white,
                        ),
                        obscureText: hidePassword,
                        prefixIconColor: Colors.white,
                        prefixIcon: Icon(Icons.password),
                        borderRadius: 10),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    GestureDetector(
                      onTap: () => {print("Clicked")},
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    FormHelper.submitButton(
                        'Login',
                        () => {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) => Home()))
                            },
                        btnColor: HexColor("#283B71"),
                        borderColor: Colors.white,
                        txtColor: Colors.white,
                        borderRadius: 30),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      "Don\'t have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => Signup()))
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => Signup()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
