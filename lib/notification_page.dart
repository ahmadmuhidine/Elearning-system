import 'package:flutter/material.dart';

class NotifivationPage extends StatelessWidget {
  const NotifivationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 98, 179),
        title: Text('Notifications'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'images/noti.png',
              ),
            ),
            Text(
              'There is no Notifacation',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 98, 179),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
