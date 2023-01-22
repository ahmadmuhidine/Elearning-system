import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.blue.shade800,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        title: Text("Forget Password"),
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(150),
                child: Text("Forget your password?"),
              ),
              Container(
                child: Text("Worry not we got your back"),
              ),
              Container(
                  child: Text(
                "Follow the instruction to reset your password",
              ))
            ],
          ),
        ),
      ),
    );
  }
}
