import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zealyug/home/home.dart';

class SignupTest extends StatefulWidget {
  const SignupTest({Key? key}) : super(key: key);

  @override
  State<SignupTest> createState() => _SignupTestState();
}

class _SignupTestState extends State<SignupTest> {
  var _name, _email, _password;
  String api = "http://192.168.59.1:3000/api/signup";
  var res;
  @override
  void initState() {
    // TODO: implement initState
    // var res = http.get(Uri.parse(api));

    // var data = JsonCodec(res);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const unSuccessSnackbar = SnackBar(
      backgroundColor: Colors.red,
      content: Text("Registration unsuccessful"),
    );
    const SuccessSnackbar = SnackBar(
      backgroundColor: Colors.green,
      content: Text("Registration Successful"),
    );
    late TextEditingController _nameController = TextEditingController();
    late TextEditingController _emailController = TextEditingController();
    late TextEditingController _passwordController = TextEditingController();
    late String print_name;
    void great() {
      // print_name = _name.text;
    }

    // void initState() {
    //   super.initState();
    //   _name.addListener(great);
    // }

    void dispose() {
      _nameController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(title: Text("Signup page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
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
                height: 20,
              ),
              TextField(
                controller: _emailController,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
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
                height: 20,
              ),
              TextField(
                controller: _passwordController,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.red,
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () async {
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
                      Navigator.push(
                          context, MaterialPageRoute(builder: (ctx) => Home()));
                      print("Registratrion successful");
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(unSuccessSnackbar);
                    }
                    ;
                    // body: JsonCodec(
                    //   Uri.parse(api),
                    // ),
                    ;
                    print(res.toString());
                  },
                  child: Text("Sign Up"),
                ),
              ),

              // GestureDetector(
              //   onTap: () => {
              //     setState(() {
              //       print('Printing : ' + _name.text);
              //       print_name = _name.text;
              //     })
              //   },
              //   child: Text("Sign Up"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
