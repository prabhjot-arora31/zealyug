import 'package:flutter/material.dart';

class Expertise extends StatefulWidget {
  const Expertise({Key? key}) : super(key: key);

  @override
  State<Expertise> createState() => _ExpertiseState();
}

class _ExpertiseState extends State<Expertise> {
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
              Text(
                'What is Your Expertise?',
                style: TextStyle(
                  fontSize: size.width / 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Please select your field of expertise (up to 5)',
                style: TextStyle(
                  fontSize: size.width / 24,
                ),
              ),
              SizedBox(height: size.height * 0.034),
              Divider(indent: 20,endIndent: 20,thickness: 1,),
              // SizedBox(height: size.height / 100),
              SizedBox(height: size.height * 0.034),
              Row(
                children: [
                  Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5,color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.purple.shade300,
                          ),
                          child: Checkbox(
                            value: true,
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
                                // _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                         Text(
                          'Accounting and finance',
                          style: TextStyle(fontSize: size.width * 0.036),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                children: [
                  Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5,color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.purple.shade300,
                          ),
                          child: Checkbox(
                            value: true,
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
                                // _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Architecture and Engineering',
                          style: TextStyle(fontSize: size.width * 0.036),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                children: [
                  Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5,color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.purple.shade300,
                          ),
                          child: Checkbox(
                            value: true,
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
                                // _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Information Technology and Software',
                          style: TextStyle(fontSize: size.width * 0.036),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                children: [
                  Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5,color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.purple.shade300,
                          ),
                          child: Checkbox(
                            value: true,
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
                                // _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Management and Consultancy',
                          style: TextStyle(fontSize: size.width * 0.036),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                children: [
                  Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5,color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.purple.shade300,
                          ),
                          child: Checkbox(
                            value: true,
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
                                // _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Media, Design, and Creatives',
                          style: TextStyle(fontSize: size.width * 0.036),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                children: [
                  Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5,color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.purple.shade300,
                          ),
                          child: Checkbox(
                            value: true,
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
                                // _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Sales and Marketing',
                          style: TextStyle(fontSize: size.width * 0.036),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                children: [
                  Container(
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.5,color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.purple.shade300,
                          ),
                          child: Checkbox(
                            value: true,
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
                                // _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Writing and Content',
                          style: TextStyle(fontSize: size.width * 0.036),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.043),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 16,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (ctx) => jobType()));
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
