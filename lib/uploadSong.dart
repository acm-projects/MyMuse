// ignore: file_names
// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, camel_case_types, file_names, duplicate_ignore

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: uploadSong(),
    ));

// ignore: must_be_immutable
class uploadSong extends StatelessWidget {
  TextEditingController textarea = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
          SingleChildScrollView(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 40, 0, 0),
                  child: Container(
                      width: 346.0,
                      height: 53.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          alignment: Alignment(.9, 0),
                          image: AssetImage('assets/Search.png'),
                        ),
                        border: Border.all(
                            width: 1.3,
                            color: const Color.fromARGB(255, 180, 179, 179)),
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
                            contentPadding: EdgeInsets.fromLTRB(19, 0, 40, 0),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Gotham',
                              color: Color.fromARGB(255, 180, 179, 179),
                            ),
                            hintText: ('Search for Music'),
                          ))),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 48, 212, 20),
            child: Text(
              "Trending Music",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Gotham',
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
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
                                      color: Color.fromARGB(255, 125, 125, 125),
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
                                      color: Color.fromARGB(255, 125, 125, 125),
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
                                      color: Color.fromARGB(255, 125, 125, 125),
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
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                        onTap: () {},
                      ))
                ],
              ),
            ],
          ),
        ])));
  }
}
