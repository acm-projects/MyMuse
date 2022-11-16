// ignore: duplicate_ignore
// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, camel_case_types, file_names, library_private_types_in_public_api, duplicate_ignore, non_constant_identifier_names, unused_import

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/presentation/song_page.dart';
import 'package:mymuse/presentation/widgets/audio_player_buttons.dart';
import 'package:mymuse/presentation/widgets/song_list_view.dart';
// import 'uploadSong.dart';

void main() => runApp(MaterialApp(
      home: feedPage(),
    ));

String default_heart = 'assets/Heart.png';
// ignore: non_constant_identifier_names
String default_heart2 = 'assets/Heart.png';

// ignore: camel_case_types, use_key_in_widget_constructors
class feedPage extends StatefulWidget {
  @override
  State<feedPage> createState() => _feedPage();
}

class _feedPage extends State<feedPage> {
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
          // Center(
          //   child: Container(
          //     width: 335.0,
          //     height: 84.0,
          //     decoration: BoxDecoration(
          //       color: Colors.deepPurpleAccent[400],
          //       borderRadius: BorderRadius.circular(30),
          //     ),
          //     child: OutlinedButton(
          //       child: const Text(
          //         'Post your MyMuse',
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //           fontSize: 20.0,
          //           fontFamily: 'Gotham',
          //           color: Colors.white,
          //         ),
          //       ),
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const SongPage()));
          //       },
          //     ),
          //   ),
          // ),
          //individual example muses
          Column(
            children: const [AudioPlayerButtons()],
          ),
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
                            onPressed: () {
                              setState(() {
                                default_heart = 'assets/HeartPurple.png';
                              });
                            },
                            child: Image.asset(default_heart)),
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
                            //Navigator.push(
                            // context,
                            //  MaterialPageRoute(
                            // builder: (context) => comments()));
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
                            onPressed: () {
                              setState(() {
                                default_heart2 = 'assets/HeartPurple.png';
                              });
                            },
                            child: Image.asset(default_heart2)),
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
                            //Navigator.push(
                            //   context,
                            // MaterialPageRoute(
                            //   builder: (context) => comments()));
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
        ])),
      ]))),
    );
  }
}


//body: PageView(
    //     children: homeScreenItems,
    //     physics: const NeverScrollableScrollPhysics(),
    //     controller: pageController,
    //     onPageChanged: onPageChanged,
    //   ),
    //   bottomNavigationBar: CupertinoTabBar(
    //     backgroundColor: Colors.black26,
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home,
    //             color: _page == 0 ? Colors.deepPurpleAccent : Colors.grey),
    //         label: '',
    //         backgroundColor: Colors.deepPurpleAccent,
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.search,
    //             color: _page == 1 ? Colors.deepPurpleAccent : Colors.grey),
    //         label: '',
    //         backgroundColor: Colors.deepPurpleAccent,
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person,
    //             color: _page == 2 ? Colors.deepPurpleAccent : Colors.grey),
    //         label: '',
    //         backgroundColor: Colors.deepPurpleAccent,
    //       ),
    //     ],
    //     onTap: navigationTapped,
    //   ),
    // );