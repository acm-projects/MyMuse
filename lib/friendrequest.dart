// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/addfriends.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import 'main.dart';

// ignore_for_file: file_names

import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: addFriends(),
//     ));

class FriendRequest extends StatefulWidget {
  @override
  _FriendRequest createState() => _FriendRequest();
}

// ignore: must_be_immutable
class _FriendRequest extends State<FriendRequest> {
  var _selectedTab = _SelectedTab.home;

  // void _handleIndexChanged(int i) {
  //   setState(() {
  //     _selectedTab = _SelectedTab.values[i];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // final PageController controller = new PageController(initialPage: 1);
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
              SingleChildScrollView(
                child: Row(
                  children: [
                    Padding(
                      // padding: const EdgeInsets.fromLTRB(22, 40, 0, 0),
                      padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Container(
                          height: 28,
                          width: 14,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/BackArrow.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Container(
                          // width: 346.0,
                          width: 306.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              alignment: Alignment(.9, 0),
                              image: AssetImage('assets/Search.png'),
                            ),
                            border: Border.all(
                                width: 1.3,
                                color:
                                    const Color.fromARGB(255, 180, 179, 179)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                                decorationThickness: 0,
                              ),
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(19, 0, 40, 0),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Gotham',
                                  color: Color.fromARGB(255, 180, 179, 179),
                                ),
                                hintText: ('Search for Friends'),
                              ))),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Card(
                          margin: const EdgeInsets.fromLTRB(22.5, 20.0, 0, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            splashColor: Colors.white,
                            child: Container(
                              width: 344,
                              height: 86,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  alignment: Alignment(-.95, 0),
                                  image: AssetImage('assets/ProfilePic1.png'),
                                ),
                              ),
                              child: Column(children: const [
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(69, 18.0, 0, 0),
                                    child: SizedBox(
                                      height: 40,
                                      width: 300,
                                      child: Text(
                                        "Invite your friends to share \ntheir music!",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.black,
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(69, 0, 0, 1),
                                  child: SizedBox(
                                      height: 14,
                                      width: 300,
                                      child: Text(
                                        "my.muse/anotherrandom.lol",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'Gotham',
                                          color: Color(0xff7000FF),
                                        ),
                                      )),
                                ),
                              ]),
                            ),
                            onTap: () {},
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 17, 200, 0),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "\nFriend Requests",
                      textAlign: TextAlign.left,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 42, 42, 42),
                              child: Row(
                                children: [
                                  Container(
                                      width: 360,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(-.95, 0),
                                          image: AssetImage(
                                              'assets/ProfilePic1.png'),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(children: const [
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 22, 0, 0),
                                                child: SizedBox(
                                                  height: 20,
                                                  width: 211,
                                                  child: Text(
                                                    "Jordan • @iamjordan",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontFamily: 'Gotham',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 0, 0, 10),
                                              child: SizedBox(
                                                  height: 12,
                                                  width: 175,
                                                  child: Text(
                                                    "2 mutual friends",
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
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        23, 0, 0, 0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      minimumSize: Size(30, 30),
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  onPressed: () {
                                                    /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                                  },
                                                  child: Container(
                                                    // alignment: Alignment.topCenter,
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/Cancel.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      minimumSize: Size(31, 30),
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  onPressed: () {
                                                    /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                                  },
                                                  child: Container(
                                                    // alignment: Alignment.topCenter,
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/Check.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 42, 42, 42),
                              child: Row(
                                children: [
                                  Container(
                                      width: 360,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(-.95, 0),
                                          image: AssetImage(
                                              'assets/ProfilePic1.png'),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(children: const [
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 22, 0, 0),
                                                child: SizedBox(
                                                  height: 20,
                                                  width: 211,
                                                  child: Text(
                                                    "Alex • @musiclover",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontFamily: 'Gotham',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 0, 0, 10),
                                              child: SizedBox(
                                                  height: 12,
                                                  width: 175,
                                                  child: Text(
                                                    "8 mutual friends",
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
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        23, 0, 0, 0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      minimumSize: Size(30, 30),
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  onPressed: () {
                                                    /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                                  },
                                                  child: Container(
                                                    // alignment: Alignment.topCenter,
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/Cancel.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      minimumSize: Size(30, 30),
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  onPressed: () {
                                                    /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                                  },
                                                  child: Container(
                                                    // alignment: Alignment.topCenter,
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/Check.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 7, 212, 4),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "\nSent Requests",
                      textAlign: TextAlign.left,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 42, 42, 42),
                              child: Row(
                                children: [
                                  Container(
                                      width: 360,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(-.95, 0),
                                          image: AssetImage(
                                              'assets/ProfilePic1.png'),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(children: const [
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 22, 0, 0),
                                                child: SizedBox(
                                                  height: 20,
                                                  width: 211,
                                                  child: Text(
                                                    "John • @johnisabasicname",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontFamily: 'Gotham',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 0, 0, 10),
                                              child: SizedBox(
                                                  height: 12,
                                                  width: 175,
                                                  child: Text(
                                                    "2 mutual friends",
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: TextButton(
                                              onPressed: () {
                                                /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                              },
                                              child: Container(
                                                alignment: Alignment.topCenter,
                                                height: 29,
                                                width: 29,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/Clock.png'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 42, 42, 42),
                              child: Row(
                                children: [
                                  Container(
                                      width: 360,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(-.95, 0),
                                          image: AssetImage(
                                              'assets/ProfilePic1.png'),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(children: const [
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 22, 0, 0),
                                                child: SizedBox(
                                                  height: 20,
                                                  width: 211,
                                                  child: Text(
                                                    "Jane • @janelovesstuff",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontFamily: 'Gotham',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 0, 0, 10),
                                              child: SizedBox(
                                                  height: 12,
                                                  width: 175,
                                                  child: Text(
                                                    "3 mutual friends",
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: TextButton(
                                              onPressed: () {
                                                /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                              },
                                              child: Container(
                                                alignment: Alignment.topCenter,
                                                height: 29,
                                                width: 29,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/Clock.png'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 42, 42, 42),
                              child: Row(
                                children: [
                                  Container(
                                      width: 360,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(-.95, 0),
                                          image: AssetImage(
                                              'assets/ProfilePic1.png'),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(children: const [
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 22, 0, 0),
                                                child: SizedBox(
                                                  height: 20,
                                                  width: 211,
                                                  child: Text(
                                                    "Emily • @emilylol",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontFamily: 'Gotham',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 0, 0, 10),
                                              child: SizedBox(
                                                  height: 12,
                                                  width: 175,
                                                  child: Text(
                                                    "7 mutual friends",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontFamily: 'Gotham',
                                                        color: Color.fromARGB(
                                                            255,
                                                            125,
                                                            125,
                                                            125)),
                                                  )),
                                            ),
                                          ]),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: TextButton(
                                              onPressed: () {
                                                /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                              },
                                              child: Container(
                                                alignment: Alignment.topCenter,
                                                height: 29,
                                                width: 29,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/Clock.png'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 42, 42, 42),
                              child: Row(
                                children: [
                                  Container(
                                      width: 360,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(-.95, 0),
                                          image: AssetImage(
                                              'assets/ProfilePic1.png'),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(children: const [
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 22, 0, 0),
                                                child: SizedBox(
                                                  height: 20,
                                                  width: 211,
                                                  child: Text(
                                                    "Kim • @slayslayslay",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontFamily: 'Gotham',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 0, 0, 10),
                                              child: SizedBox(
                                                  height: 12,
                                                  width: 175,
                                                  child: Text(
                                                    "3 mutual friends",
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: TextButton(
                                              onPressed: () {
                                                /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FILLER()));*/
                                              },
                                              child: Container(
                                                alignment: Alignment.topCenter,
                                                height: 29,
                                                width: 29,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/Clock.png'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )))
                    ],
                  ),
                ],
              ),
            ]))));
  }
}

enum _SelectedTab { home, search }
