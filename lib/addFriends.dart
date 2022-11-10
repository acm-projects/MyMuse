// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; /*
import 'package:test_flutter/friendrequest.dart';*/

import 'FriendRequest.dart';

// ignore_for_file: file_names

// void main() => runApp(MaterialApp(
//       home: addFriends(),
//     ));

void main() => runApp(MaterialApp(
      home: FriendRequest(),
    ));

// ignore: must_be_immutable, camel_case_types
class addFriends extends StatelessWidget {
  TextEditingController textarea = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                      padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
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
                                  image:
                                      AssetImage('assets/FakeProfileSmall.png'),
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
                  const SizedBox(
                    height: 20,
                  ),
                  // ignore: duplicate_ignore
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 50, 0),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "\nYour Friends",
                          textAlign: TextAlign.left,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 21.0,
                            fontFamily: 'Gotham',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 25, 22, 0),
                        child: Container(
                          width: 140.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent[400],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Friends Requests',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FriendRequest()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Card(
                          margin: const EdgeInsets.fromLTRB(22.5, 23, 0, 0),
                          color: Color(0xff2A2A2A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            // splashColor: Color.fromARGB(255, 42, 42, 42),
                            // highlightColor: Color.fromRGBO(42, 42, 42, 100),
                            child: Container(
                              width: 344,
                              height: 63,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  alignment: Alignment(-.95, 0),
                                  image:
                                      AssetImage('assets/FakeProfileSmall.png'),
                                ),
                              ),
                              child: Column(children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(65, 15, 0, 0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 300,
                                      child: Text(
                                        "Apple • @thisismyuser",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(65, 1, 0, 1),
                                  child: SizedBox(
                                      height: 14,
                                      width: 300,
                                      child: Text(
                                        "7 mutual friends",
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
                  Row(
                    children: [
                      Card(
                          margin: const EdgeInsets.fromLTRB(22.5, 23, 0, 0),
                          color: Color(0xff2A2A2A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            // splashColor: Colors.white,
                            child: Container(
                              width: 344,
                              height: 63,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  alignment: Alignment(-.95, 0),
                                  image:
                                      AssetImage('assets/FakeProfileSmall.png'),
                                ),
                              ),
                              child: Column(children: const [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(65, 15, 0, 0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 300,
                                      child: Text(
                                        "Green • @greenguy",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(65, 1, 0, 1),
                                  child: SizedBox(
                                      height: 14,
                                      width: 300,
                                      child: Text(
                                        "7 mutual friends",
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
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 7, 212, 4),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "\nSuggestions",
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
                                              'assets/FakeProfileSmall.png'),
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
                                                    "Temoc • @cometutd",
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
                                              'assets/FakeProfileSmall.png'),
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
                                                    "User • @user8734891304",
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
                                                          'assets/Plus.png'),
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
                                              'assets/FakeProfileSmall.png'),
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
                                                    "Will • @hellothisiswill",
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
                                                          'assets/Plus.png'),
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
                                              'assets/FakeProfileSmall.png'),
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
                                                    "Faiza • @projectmanager",
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
                                                      fontSize: 10.0,
                                                      fontFamily: 'Gotham',
                                                      color: Color.fromARGB(
                                                          255, 180, 179, 179),
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
                                                          'assets/Plus.png'),
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
