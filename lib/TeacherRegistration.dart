import 'package:elearning/TeacherLogingScreenDetails.dart';
import 'package:flutter/material.dart';

class TeacherRegistration extends StatelessWidget {
  const TeacherRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.blue.shade800,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        title: Text("Create new account"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.only(left: 30, right: 30, top: 50),
              child: TextField(
                cursorColor: Colors.blue.shade800,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue.shade800,
                  ),
                  hintText: "Teacher's Name",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 25, bottom: 20),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.blue.shade800,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.blue.shade800,
                    ),
                    hintText: "Enter Email"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
              decoration: BoxDecoration(),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.blue.shade800,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue.shade800,
                    ),
                    hintText: "Teaching Lessons"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
              decoration: BoxDecoration(),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.blue.shade800,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue.shade800,
                    ),
                    hintText: "Specialization"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
              decoration: BoxDecoration(),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.blue.shade800,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue.shade800,
                    ),
                    hintText: "Semester"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.blue.shade800,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.blue.shade800,
                    ),
                    hintText: "Password"),
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue.shade800,
                      padding: EdgeInsets.only(
                          left: 122, right: 125, bottom: 15, top: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TeacherLoginScreenDetails()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
