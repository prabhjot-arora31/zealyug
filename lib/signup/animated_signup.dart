import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:zealyug/home/home.dart';
import 'package:zealyug/login/login_real.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> with SingleTickerProviderStateMixin {
  bool isAPICallprocess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? phone;
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#283B71"),
        body: ProgressHUD(
          inAsyncCall: isAPICallprocess,
          opacity: 0.3,
          key: UniqueKey(),
          child: Form(
            key: globalFormKey,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: _loginUI(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                      "Sign up",
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
                FormHelper.inputFieldWidget(
                  context,
                  "Phone",
                  "Phone",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Phone can\'t be empty";
                    }
                    return null;
                  },
                  (onSavedVal) => {
                    phone = onSavedVal,
                  },
                  borderFocusColor: Colors.white,
                  borderColor: Colors.white,
                  hintColor: Colors.white,
                  showPrefixIcon: true,
                  prefixIconColor: Colors.white,
                  prefixIcon: Icon(Icons.phone),
                  textColor: Colors.white,
                  borderRadius: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                FormHelper.submitButton(
                    'Sign Up',
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
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => Login()))
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
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
