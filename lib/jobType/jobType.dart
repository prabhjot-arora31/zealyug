import 'package:flutter/material.dart';
import 'package:zealyug/Expertise/expertise.dart';

class jobType extends StatefulWidget {
  const jobType({Key? key}) : super(key: key);

  @override
  _jobTypeState createState() => _jobTypeState();
}

class _jobTypeState extends State<jobType> {
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
                'Choose Your Job Type',
                style: TextStyle(
                  fontSize: size.width / 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height / 25),
              Text(
                  "Choose whether you are looking for a job or you are an organization/company that needs employees.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width / 25)),
              SizedBox(height: size.height * 0.025),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
                thickness: 0.5,
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.4,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(150),
                          ),
                          padding: EdgeInsets.all(size.width * 0.02),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDqAyS1iPdyUb23GGDLUIQKW_h_dQa1YXVVQ&usqp=CAU",
                            width: size.width * 0.09,
                          ),
                        ),
                        // SizedBox(
                        //   height: size.height * 0.025,
                        // ),
                        Text(
                          "Find a job",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: size.width * 0.045,
                              fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   height: size.height * 0.025,
                        // ),
                        Text(
                          "I want to find a job for me",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.4,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(150),
                          ),
                          padding: EdgeInsets.all(size.width * 0.02),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThuhf3tIsTccxROpsFEli3OiijJlavT_LK1A&usqp=CAU",
                            width: size.width * 0.14,
                          ),
                        ),
                        // SizedBox(
                        //   height: size.height * 0.025,
                        // ),
                        Text(
                          "Find an Employee",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: size.width * 0.045,
                              fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   height: size.height * 0.025,
                        // ),
                        Text(
                          "I want to find employees",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(height: size.height / 100),
              SizedBox(height: size.height * 0.1),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 16,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => Expertise()));
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
