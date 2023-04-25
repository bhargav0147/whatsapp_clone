import 'package:flutter/material.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({Key? key}) : super(key: key);

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              "assets/images/com.jpeg",
              height: 200,
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              "Introducing communities",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1,
                  fontFamily: 'popins',
                  fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "Easily organize your related groups and send",
              style: TextStyle(
                  color: Colors.black45,
                  letterSpacing: 1,
                  fontFamily: 'popins',
                  fontSize: 15),
            ),
            SizedBox(height: 5),
            Text(
              "announcements. Now, your communities, like",
              style: TextStyle(
                  color: Colors.black45,
                  letterSpacing: 1,
                  fontFamily: 'popins',
                  fontSize: 15),
            ),
            SizedBox(height: 5),
            Text(
              "neighborhoods or schools, can have their own space.",
              style: TextStyle(
                  color: Colors.black45,
                  letterSpacing: 1,
                  fontFamily: 'popins',
                  fontSize: 15),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                  color: Color(0xff008069),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Start your community",
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 15, letterSpacing: 1, fontFamily: 'popins'),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
