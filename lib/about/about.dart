import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

const String info =
    """ZealYug is a platform for Authentic users, Integrity and Quick hiring, Opportunity to earn guaranteed experience certificate, and enhancing career with similar community through networking. We believe that every little experience matters in terms of advancing one's career. You can start at ZealYug with your own idea or by joining one that someone else has and you can even match with your ideal career. It is a service for anyone who are having trouble hiring sincere and enthusiastic team members.
    """;

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          const Text(
            "About",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 2),
          ),
          const SizedBox(
            height: 25,
          ),
          const Center(
            child: Text(
              info,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
            ),
          )
        ]),
      ),
    );
  }
}
