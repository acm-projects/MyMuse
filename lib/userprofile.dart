import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/addfriends.dart';
import 'package:test_flutter/friendrequest.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import 'main.dart';

void main() => runApp(MaterialApp(
      home: UserProfile(),
    ));

class UserProfile extends StatelessWidget {
  TextEditingController textarea = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              SingleChildScrollView(
                  child: Row(
                children: [
                  SingleChildScrollView(
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 70, 70, 40),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Container(
                            alignment: Alignment.topCenter,
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
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                        child: Container(
                          height: 80,
                          width: 115,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/mymuselogo.png'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(22, 45, 10, 10),
                        child: Container(
                          width: 108,
                          height: 53.0,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 42, 42, 42),
                            border: Border.all(
                              color: Color.fromARGB(255, 180, 179, 179),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: OutlinedButton(
                            child: const Text(
                              'Edit Profile',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => addFriends()));
                            },
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/ProfilePic2.png'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
              ),
              const Text(
                "Amy Smith",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 23.0,
                  fontFamily: 'Gotham',
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "@amy.smith123",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Gotham',
                  color: Color.fromARGB(255, 180, 179, 179),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 10),
                child: Container(
                  width: 277.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 42, 42, 42),
                    border: Border.all(
                      color: Color.fromARGB(255, 180, 179, 179),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: OutlinedButton(
                    child: const Text(
                      'View Monthly Breakdown',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addFriends()));
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Container(
                width: 355.0,
                height: 254.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.3,
                      color: const Color.fromARGB(255, 180, 179, 179)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 120, 10),
                      child:
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                            Text(
                              "Most Mused Artist",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Gotham',
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
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
                                        width: 337,
                                        height: 60,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            alignment: Alignment(-.95, 0),
                                            image: AssetImage(
                                                'assets/FakeAlbum.png'),
                                            scale: 0.9,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Column(children: const [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      69, 20, 0, 0),
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 187,
                                                    child: Text(
                                                      "Kendrick Lamar",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontFamily: 'Gotham',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                            ]),
                                          ],
                                        )),
                                  ],
                                )))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 120, 10),
                      child:
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                            Text(
                              "Most Mused Song",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Gotham',
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
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
                                        width: 337,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            alignment: Alignment(-.95, 0),
                                            image: AssetImage(
                                                'assets/FakeAlbum.png'),
                                            scale: 0.9,
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
                                                      "Die Hard",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 17.0,
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
                                                      "Kendrick Lamar",
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
                                          ],
                                        )),
                                  ],
                                )))
                      ],
                    ),
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 25, 22, 20),
                child: Container(
                  width: 150.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent[400],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: OutlinedButton(
                    child: const Text(
                      'Log out',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addFriends()));
                    },
                  ),
                ),
              )
              // const SizedBox(
              //   height: 10,
              // ),
            ]))));
  }
}
