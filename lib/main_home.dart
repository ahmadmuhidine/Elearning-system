import 'package:elearning/Lectures.dart';
import 'package:elearning/api/pdf_paragrah_api.dart';
import 'package:elearning/notification_page.dart';
import 'package:elearning/teacher_page.dart';
import 'package:flutter/material.dart';
import 'package:io/ansi.dart';
import 'dart:ui' as ui;
import 'StudentLoginScreenDetails.dart';
import 'api/pdf_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 98, 179),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        // leading: InkWell(
        //   onTap: () {},
        //   child: const Icon(
        //     Icons.subject,
        //   ),
        // ),
        actions: [
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const NotifivationPage())),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.notifications,
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(110.0),
          child: Container(
            padding:
                const EdgeInsets.only(left: 30, top: 10, bottom: 20, right: 30),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 5, 12, 18),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Book Title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'THIRD YEAR',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'OpenSans',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'SEMESTER 5',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'OpenSans',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: const NavigationDrawer(),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/inter.png"))),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Lectures())),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/inter3.png"))),
            ),
          ),
          InkWell(
            onTap: () async {
              final pdfFile = await PdfParagraphApi.generate();
              PdfApi.openFile(pdfFile);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/inter4.png"))),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Lectures())),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/inter5.png"))),
            ),
          ),
          InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Lectures())),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/inter6.png"))))),
          InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Lectures())),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/inter7.png"))))),
          InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Lectures())),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/inter2.png"))))),
        ],
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [buildHeader(context), buildMenuItems(context)],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        color: Color.fromARGB(255, 0, 98, 179),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage('images/admin.png'),
            ),
            SizedBox(height: 12),
            Text(
              'Ahmad Muhidine',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'OpenSans',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ibnisdine@gmail.com',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      );
  Widget buildMenuItems(BuildContext context) => Wrap(
        runSpacing: 10,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage())),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Teacher'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Tepage())),
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorite'),
            onTap: (() {}),
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Book'),
            onTap: (() {}),
          ),
          ListTile(
            leading: const Icon(Icons.notification_add),
            title: const Text('Notification'),
            onTap: (() {}),
          ),
          ListTile(
            leading: const Icon(Icons.update),
            title: const Text('Updates'),
            onTap: (() {}),
          ),
          const Divider(color: Colors.black),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: (() {}),
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const StudentLoginScreenDetails())),
          )
        ],
      );
}
// body: Container(
//   padding: EdgeInsets.all(32),
//   margin: EdgeInsets.all(80),
//   child: Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
// TextButton.icon(
//   style: TextButton.styleFrom(
//     foregroundColor: Colors.white,
//     backgroundColor: Color.fromARGB(255, 0, 98, 179),
//   ),
//   label: Text('NETWORK PDF         '),
//   icon: Icon(Icons.auto_stories_sharp),
//   onPressed: () async {
//     final pdfFile =
//         await PdfApi.generateCenteredText("NETWORK");
//     PdfApi.openFile(pdfFile);
//   },
// ),
// const SizedBox(height: 24),
// TextButton.icon(
//   style: TextButton.styleFrom(
//     foregroundColor: Colors.white,
//     backgroundColor: Color.fromARGB(255, 0, 98, 179),
//   ),
// label: Text("SOFTWARE ENGINER PDF"),
// icon: Icon(Icons.auto_stories_sharp),
// onPressed: () async {
//   final pdfFile = await PdfParagraphApi.generate();
//   PdfApi.openFile(pdfFile);
//   },
// ),
// const SizedBox(height: 24),
// TextButton.icon(
//   style: TextButton.styleFrom(
//     foregroundColor: Colors.white,
//     backgroundColor: Color.fromARGB(255, 0, 98, 179),
//   ),
//   label: Text("INTERNET AND ITS APPLICATION PDF"),
//   icon: Icon(Icons.auto_stories_sharp),
//   onPressed: () {},
// ),
// const SizedBox(height: 24),
// TextButton.icon(
//   style: TextButton.styleFrom(
//       foregroundColor: Colors.white,
//       backgroundColor: Color.fromARGB(255, 0, 98, 179)),
//   label: Text("HUMAN INTERATION AND COMPUTER PDF"),
//   onPressed: () {},
//   icon: Icon(Icons.auto_stories_sharp),
// )
// ],
// );
// // ),
// // )

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'HUMAN INTERATION AND COMPUTER PDF',
    'NETWORK',
    'SOFTWARE ENGINER',
    'INTERNET AND ITS APPLICATION',
    'ENGINER',
    'SOFTWARE ENGINER',
    'INTERNET AND ITS APPLICATION',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        TextButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            child: const Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) => TextButton(
      onPressed: () => close(context, null),
      child: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
      final result = searchResults.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;

            showResults(context);
          },
        );
      },
    );
  }
}
