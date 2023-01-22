import 'package:flutter/material.dart';

class TeacherSubjects extends StatelessWidget {
  const TeacherSubjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 150,
        backgroundColor: Colors.blue.shade800,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
              onTap: () {},
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Container(
            alignment: Alignment.center,
            width: 349,
            height: 50,
            color: Colors.white,
            margin: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 80,
            ),
            // decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(0.5),
            //     ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: TextField(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
