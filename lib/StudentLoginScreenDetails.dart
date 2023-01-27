import 'package:elearning/Lectures.dart';
import 'package:elearning/StudentRegistration.dart';
import 'package:elearning/forgetPassword_screen.dart';
import 'package:flutter/material.dart';
import 'main_home.dart';

class StudentLoginScreenDetails extends StatelessWidget {
  const StudentLoginScreenDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.blue.shade800,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        title: Text(
          "Login as a Student",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.only(left: 30, right: 30, top: 130),
              child: TextField(
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
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.blue.shade800,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.blue.shade800,
                    ),
                    hintText: "Enter Password"),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
              child: GestureDetector(
                child: Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.blue.shade800),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPassword()));
                },
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
              child: Text(
                "Dont have an account?",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: GestureDetector(
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.blue.shade800,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentRegistration()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
