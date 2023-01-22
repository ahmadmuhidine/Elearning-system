import 'package:elearning/LessonExplanation1.dart';
import 'package:flutter/material.dart';

class Lectures extends StatelessWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
        toolbarHeight: 150,
        title: Text("Software Engineering"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(left: 90, right: 90),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LessonExplanation1()));
                },
                child: Text(
                  "Lecture 1",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(
                    left: 90,
                    right: 90,
                  ),
                ),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Lectures())),
                child: Text(
                  "Lecture 2",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(
                    left: 90,
                    right: 90,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Lecture 3",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(
                    left: 90,
                    right: 90,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Lecture 4",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(
                    left: 90,
                    right: 90,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Lecture 5",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(
                    left: 90,
                    right: 90,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Lecture 6",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(
                    left: 90,
                    right: 90,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Lecture 6",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade800, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.only(left: 90, right: 90),
                ),
                onPressed: () {},
                child: Text(
                  "Lecture 8",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
