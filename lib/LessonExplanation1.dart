import 'package:flutter/material.dart';
import 'package:elearning/Lectures.dart';

class LessonExplanation1 extends StatelessWidget {
  const LessonExplanation1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.blue.shade800,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        title: Text("Software Engineering"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 29),
                  child: Text(
                    "Lesson Explanation",
                    style: TextStyle(
                      color: Colors.blue.shade800,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              height: 200,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/splash.png",
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Text(
                    "Dr Adil Abdulaziz",
                    style: TextStyle(fontSize: 18, color: Colors.blue.shade800),
                  ),
                  Text(
                    "*****",
                    style: TextStyle(
                      color: Colors.yellow.shade800,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              height: 200,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      "images/splash.png",
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Text(
                    "Animation",
                    style: TextStyle(fontSize: 18, color: Colors.blue.shade800),
                  ),
                  Text(
                    "*****",
                    style: TextStyle(
                      color: Colors.yellow.shade800,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
