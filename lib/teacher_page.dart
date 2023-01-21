import 'package:flutter/material.dart';
import 'notification_page.dart';
import 'main_home.dart';

class Tepage extends StatefulWidget {
  const Tepage({super.key});

  @override
  State<Tepage> createState() => _TepageState();
}

class _TepageState extends State<Tepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 98, 179),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          actions: [
            InkWell(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NotifivationPage())),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.notifications,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(110.0),
            child: Container(
              padding: const EdgeInsets.only(left: 30, bottom: 10, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'THIRD YEAR',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('THIRD YEAR',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),
        ),
        body: GridView.count(
            //primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("images/t1.png"),
                                )),
                                height: 140,
                                width: 140,
                              )),
                          Text(
                            'Dr. Abdallah Doj',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/t2.png"))),
                              height: 140,
                              width: 140,
                            ),
                          ),
                          Text(
                            'Dr. Adil Abdellaziz',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/t3.png"))),
                              height: 140,
                              width: 140,
                            ),
                          ),
                          Text(
                            'Dr. Walid Adam',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/t3.png"))),
                              height: 140,
                              width: 140,
                            ),
                          ),
                          Text(
                            'Dr. Emad',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/t3.png"))),
                              height: 140,
                              width: 140,
                            ),
                          ),
                          Text(
                            'Dr. Iman',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/t3.png"))),
                              height: 140,
                              width: 140,
                            ),
                          ),
                          Text(
                            'Dr. Namariq',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ]));
  }
}

// class NavigationDrawer extends StatelessWidget {
//   const NavigationDrawer({super.key});

//   @override
//   Widget build(BuildContext context) => Drawer(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [buildHeader(context), buildMenuItems(context)],
//           ),
//         ),
//       );
//   Widget buildHeader(BuildContext context) => Container(
//         color: Color.fromARGB(255, 0, 98, 179),
//         padding: EdgeInsets.only(
//           top: MediaQuery.of(context).padding.top,
//         ),
//         child: Column(
//           children: const [
//             CircleAvatar(
//               radius: 52,
//               backgroundImage: AssetImage('images/admin.png'),
//             ),
//             SizedBox(height: 12),
//             Text(
//               'Ahmad Muhidine',
//               style: TextStyle(
//                 fontSize: 25,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               'ibnisdine@gmail.com',
//               style: TextStyle(fontSize: 15, color: Colors.white),
//             )
//           ],
//         ),
//       );
//   Widget buildMenuItems(BuildContext context) => Wrap(
//         runSpacing: 10,
//         children: [
//           ListTile(
//             // leading: const Icon(Icons.home_outlined),
//             title: const Text('Home'),
//             onTap: () => Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => const Tepage())),
//           ),
//           ListTile(
//             leading: const Icon(Icons.favorite),
//             title: const Text('Favorite'),
//             onTap: (() {}),
//           ),
//           ListTile(
//             leading: const Icon(Icons.book),
//             title: const Text('Book'),
//             onTap: (() {}),
//           ),
//           ListTile(
//             leading: const Icon(Icons.notifications),
//             title: const Text('Notifications'),
//             onTap: (() {}),
//           ),
//           ListTile(
//             leading: const Icon(Icons.update),
//             title: const Text('Updates'),
//             onTap: (() {}),
//           ),
//           const Divider(color: Colors.black),
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text('Setting'),
//             onTap: (() {}),
//           ),
//           ListTile(
//             leading: const Icon(Icons.exit_to_app),
//             title: const Text('Exit'),
//             onTap: (() {}),
//           )
//         ],
//       );
// }
