import 'package:flutter/material.dart';

class Expertise extends StatefulWidget {
  const Expertise({Key? key}) : super(key: key);

  @override
  State<Expertise> createState() => _ExpertiseState();
}

class _ExpertiseState extends State<Expertise> {
  List<String> fields = [
    'Accounting and finance',
    'Architecture and Engineering',
    'Information Technology and Software',
    'Management and Consultancy',
    'Media, Design, and Creatives',
    "Sales and Marketing",
    "Writing and Content",
  ];
  List<bool> values = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height / 10,
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
              SizedBox(
                height: size.height / 100,
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              SizedBox(height: size.height * 0.001),
              ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: fields.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckBoxRow(
                    text: fields[index],
                    value: values[index],
                    onChanged: (bool? value) {
                      setState(() {
                        values[index] = value!;
                      });
                    },
                  );
                },
              ),
              SizedBox(
                  height: size.height *
                      0.03), // Add a gap of 2% of the screen height
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
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBoxRow extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CheckBoxRow({
    Key? key,
    required this.text,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: size.height / 12,
        ),
        Container(
          width: size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 0.5, color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: Colors.purple.shade300,
                ),
                child: Checkbox(
                  value: value,
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  onChanged: onChanged,
                ),
              ),
              Text(
                text,
                style: TextStyle(fontSize: size.width * 0.036),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
