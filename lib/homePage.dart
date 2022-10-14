// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, camel_case_types, file_names, library_private_types_in_public_api

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import 'package:mymuse/uploadSong.dart';

import 'comments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<homePage> {
  var _selectedTab = _SelectedTab.homePage;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 42, 42),
      body: Center(
          child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: <
                      Widget>[
        SingleChildScrollView(
            child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Container(
              height: 67,
              width: 73,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/LogoSmall.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 335.0,
              height: 84.0,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[400],
                borderRadius: BorderRadius.circular(30),
              ),
              child: OutlinedButton(
                child: const Text(
                  'Post your MyMuse',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => uploadSong()));
                },
              ),
            ),
          ),
          /*
                Column(children: [
                  Row(
                    children: [
                      Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                          margin: const EdgeInsets.fromLTRB(22.5, 10, 0, 0),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            splashColor: const Color.fromARGB(255, 42, 42, 42),
                            child: Container(
                              width: 344,
                              height: 60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  alignment: Alignment(-.95, 0),
                                  image:
                                      AssetImage('assets/FakePersonalProfileSmall.png'),
                                ),
                              ),
                              child: Column(children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 300,
                                      child: Text(
                                        "You're listening to...",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(65, 2, 0, 1),
                                  child: SizedBox(
                                      height: 14,
                                      width: 300,
                                      child: Text(
                                        "1 minute ago",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'Gotham',
                                          color: Color.fromARGB(
                                              255, 125, 125, 125),
                                        ),
                                      )),
                                ),
                              ]),
                            ),
                            onTap: () {
                              /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => personalProfile()));*/
                            },
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                          margin: const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            splashColor: Colors.white,
                            child: Container(
                              width: 344,
                              height: 63,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  alignment: Alignment(-.95, 0),
                                  image: AssetImage('assets/FakeAlbum.png'),
                                ),
                              ),
                              child: Column(children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 300,
                                      child: Text(
                                        "As It Is",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.black,
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(65, 2, 0, 1),
                                  child: SizedBox(
                                      height: 14,
                                      width: 300,
                                      child: Text(
                                        "Harry Styles",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'Gotham',
                                          color: Color.fromARGB(
                                              255, 125, 125, 125),
                                        ),
                                      )),
                                ),
                              ]),
                            ),
                            onTap: () {},
                          ))
                    ],
                  ),
                ]),
                Column(children: [
                  Row(children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(290, 0, 0, 0),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: TextButton(
                            onPressed: () {
                              /* Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Likes()));*/
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Heart.png'),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: TextButton(
                                onPressed: () {  /* Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Comments()));*/},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/Comment.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    )
                  ])
                ]),*/
          Column(children: [
            const SizedBox(
              height: 15,
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              color: Color.fromARGB(255, 180, 179, 179),
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                    color: const Color.fromARGB(255, 42, 42, 42),
                    margin: const EdgeInsets.fromLTRB(22.5, 10, 0, 0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      splashColor: const Color.fromARGB(255, 42, 42, 42),
                      child: Container(
                        width: 344,
                        height: 60,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment(-.95, 0),
                            image: AssetImage('assets/FakeProfileSmall.png'),
                          ),
                        ),
                        child: Column(children: const [
                          Padding(
                              padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                              child: SizedBox(
                                height: 20,
                                width: 300,
                                child: Text(
                                  "Random.Person",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Gotham',
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.fromLTRB(65, 2, 0, 1),
                            child: SizedBox(
                                height: 14,
                                width: 300,
                                child: Text(
                                  "2 hours ago",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Gotham',
                                    color: Color.fromARGB(255, 125, 125, 125),
                                  ),
                                )),
                          ),
                        ]),
                      ),
                      onTap: () {
                        /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                      },
                    ))
              ],
            ),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              height: 330,
              width: 330,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Taylor.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          Column(children: [
            Row(children: [
              Container(
                  color: const Color.fromARGB(255, 42, 42, 42),
                  margin: const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    splashColor: const Color.fromARGB(255, 42, 42, 42),
                    child: SizedBox(
                      width: 230,
                      height: 60,
                      child: Column(children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 11, 0, 0),
                            child: SizedBox(
                              height: 32,
                              width: 350,
                              child: Text(
                                "...Ready For it?",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 29.0,
                                  fontFamily: 'Gotham',
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 1),
                          child: SizedBox(
                              height: 14,
                              width: 300,
                              child: Text(
                                "Taylor Swift",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Gotham',
                                  color: Color.fromARGB(255, 180, 179, 179),
                                ),
                              )),
                        ),
                      ]),
                    ),
                    onTap: () {
                      /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                    },
                  )),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Heart.png'),
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => comments()));
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Comment.png'),
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ]),
          ]),
          Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    color: const Color.fromARGB(255, 42, 42, 42),
                    margin: const EdgeInsets.fromLTRB(22.5, 10, 0, 0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      splashColor: const Color.fromARGB(255, 42, 42, 42),
                      child: Container(
                        width: 344,
                        height: 60,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment(-.95, 0),
                            image: AssetImage('assets/FakeProfileSmall.png'),
                          ),
                        ),
                        child: Column(children: const [
                          Padding(
                              padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                              child: SizedBox(
                                height: 20,
                                width: 300,
                                child: Text(
                                  "Random.Person",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Gotham',
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.fromLTRB(65, 2, 0, 1),
                            child: SizedBox(
                                height: 14,
                                width: 300,
                                child: Text(
                                  "2 hours ago",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Gotham',
                                    color: Color.fromARGB(255, 125, 125, 125),
                                  ),
                                )),
                          ),
                        ]),
                      ),
                      onTap: () {
                        /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                      },
                    ))
              ],
            ),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              height: 330,
              width: 330,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Taylor.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          Column(children: [
            Row(children: [
              Container(
                  color: const Color.fromARGB(255, 42, 42, 42),
                  margin: const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    splashColor: const Color.fromARGB(255, 42, 42, 42),
                    child: SizedBox(
                      width: 230,
                      height: 60,
                      child: Column(children: const [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 11, 0, 0),
                            child: SizedBox(
                              height: 32,
                              width: 350,
                              child: Text(
                                "...Ready For it?",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 29.0,
                                  fontFamily: 'Gotham',
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: SizedBox(
                              height: 14,
                              width: 300,
                              child: Text(
                                "Taylor Swift",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Gotham',
                                  color: Color.fromARGB(255, 180, 179, 179),
                                ),
                              )),
                        ),
                      ]),
                    ),
                    onTap: () {
                      /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                    },
                  )),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Heart.png'),
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => comments()));
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Comment.png'),
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ]),
          ]),
        ]))
      ]))),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          backgroundColor: Colors.deepPurpleAccent[400],
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          enableFloatingNavBar: true,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.white,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.search),
              // padding: EdgeInsets.only(right: 10),
              selectedColor: Colors.white,
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.inbox),
              selectedColor: Colors.white,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { homePage, favorite, search, person }
