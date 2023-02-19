import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:zealyug/home/home.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zealyug/home/home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var _name, _email, _password;
  String api = "https://jealous-plum-twill.cyclic.app/api/signup";
  var res;
  @override
  void initState() {
    // TODO: implement initState
    // var res = http.get(Uri.parse(api));

    // var data = JsonCodec(res);
    super.initState();
  }

  bool isAPICallprocess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? phone;
  late TextEditingController _nameController = TextEditingController();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  late String print_name;
  @override
  Widget build(BuildContext context) {
    late TextEditingController _nameController = TextEditingController();
    late TextEditingController _emailController = TextEditingController();
    late TextEditingController _passwordController = TextEditingController();
    late String print_name;
    void dispose() {
      _nameController.dispose();
      super.dispose();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#283B71"),
        // backgroundColor: Colors.white,
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
    const unSuccessSnackbar = SnackBar(
      backgroundColor: Colors.red,
      content: Text("Registration unsuccessful"),
    );
    const SuccessSnackbar = SnackBar(
      backgroundColor: Colors.green,
      content: Text("Registration Successful"),
    );
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
                      // child: Text(
                      //   "Logo Image",
                      //   style: TextStyle(color: Colors.black),
                      // )
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
                    TextField(
                      controller: _nameController,
                      // style: TextStyle(color: Colors.blue),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          // borderSide: BorderSide.merge(
                          //   BorderSide(),
                          //   BorderSide(),
                          // ),
                        ),
                      ),
                    ),
                    // FormHelper.inputFieldWidget(
                    //   context,
                    //   "Phone",
                    //   "Phone",
                    //   (onValidateVal) {
                    //     if (onValidateVal.isEmpty) {
                    //       return "Phone can\'t be empty";
                    //     }
                    //     return null;
                    //   },
                    //   (onSavedVal) => {
                    //     phone = onSavedVal,
                    //   },
                    //   borderFocusColor: Colors.white,
                    //   borderColor: Colors.white,
                    //   hintColor: Colors.white,
                    //   showPrefixIcon: true,
                    //   prefixIconColor: Colors.white,
                    //   prefixIcon: Icon(Icons.phone),
                    //   textColor: Colors.white,
                    //   borderRadius: 10,
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    TextField(
                      controller: _emailController,
                      // style: TextStyle(color: Colors.blue),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          // borderSide: BorderSide.merge(
                          //   BorderSide(),
                          //   BorderSide(),
                          // ),
                        ),
                      ),
                    ),

                    // FormHelper.submitButton(
                    //     'Sign Up',
                    //     () => {
                    //           Navigator.push(context,
                    //               MaterialPageRoute(builder: (ctx) => Home()))
                    //         },
                    //     btnColor: HexColor("#283B71"),
                    //     borderColor: Colors.white,
                    //     txtColor: Colors.white,
                    //     borderRadius: 30),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    TextField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),

                          // borderSide: BorderSide.merge(
                          //   BorderSide(),
                          //   BorderSide(),
                          // ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    FormHelper.submitButton('Sign Up', () async {
                      _name = _nameController.text;
                      _email = _emailController.text;
                      _password = _passwordController.text;
                      print("The name is : " + _name);
                      print("The email is :" + _email);
                      print("The password is : " + _password);
                      res = await http.post(
                        Uri.parse(api),
                        headers: {'Content-Type': 'application/json'},
                        body: jsonEncode({
                          'name': _name,
                          'email': _email,
                          'password': _password,
                        }),
                      );
                      if (res.statusCode == 200) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SuccessSnackbar);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => Home()));
                        print("Registratrion successful");
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(unSuccessSnackbar);
                      }
                      ;
                      // body: JsonCodec(
                      //   Uri.parse(api),
                      // ),
                      print(res.toString());
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
                      // onTap: () => {
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (ctx) => Login()))
                      // },
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
