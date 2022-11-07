// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mymuse/main.dart';

void main() => runApp(MaterialApp(
      home: monthlyBreakdown(),
    ));

// ignore: camel_case_types, use_key_in_widget_constructors
class monthlyBreakdown extends StatelessWidget {
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
                        padding: const EdgeInsets.fromLTRB(0, 60, 80, 40),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
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
                        padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                        child: Container(
                          height: 80,
                          width: 115,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/LogoLarge.png'),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              )),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "October 2022 Breakdown",
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
                "Mused Stats",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Gotham',
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: Container(
                      width: 346.0,
                      height: 133.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.3,
                            color: const Color.fromARGB(255, 180, 179, 179)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 6),
                                  Text(
                                    "Number of likes:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Gotham',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Number of comments:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Gotham',
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Number of friends:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Gotham',
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(70, 3, 0, 5.6),
                              child: Column(
                                children: const [
                                  SizedBox(height: 6),
                                  Text(
                                    "12",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontFamily: 'Gotham',
                                        color: Colors.white,
                                        decoration: TextDecoration.underline),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "20",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: 'Gotham',
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "32",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: 'Gotham',
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ))),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Container(
                width: 346.0,
                height: 153.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.3,
                      color: const Color.fromARGB(255, 180, 179, 179)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Oldest Mused Song",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Gotham',
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                        color: const Color.fromARGB(255, 42, 42, 42),
                        margin: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          splashColor: const Color.fromARGB(255, 42, 42, 42),
                          child: Container(
                            width: 346,
                            height: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment(-1, 0.5),
                                image: AssetImage('assets/FakeAlbum.png'),
                              ),
                            ),
                            child: Column(children: const [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                                  child: SizedBox(
                                    height: 25,
                                    width: 300,
                                    child: Text(
                                      "...Ready For It?",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20.0,
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
                                      "Taylor Swift",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Gotham',
                                        color:
                                            Color.fromARGB(255, 125, 125, 125),
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
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "September 3rd, 2016",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Gotham',
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              )),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Container(
                width: 346.0,
                height: 153.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.3,
                      color: const Color.fromARGB(255, 180, 179, 179)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Youngest Mused Song",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Gotham',
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                        color: const Color.fromARGB(255, 42, 42, 42),
                        margin: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          splashColor: const Color.fromARGB(255, 42, 42, 42),
                          child: Container(
                            width: 346,
                            height: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment(-1, 0.5),
                                image: AssetImage('assets/FakeAlbum.png'),
                              ),
                            ),
                            child: Column(children: const [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                                  child: SizedBox(
                                    height: 25,
                                    width: 300,
                                    child: Text(
                                      "Die Hard",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20.0,
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
                                      "Kendrick Lamar",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Gotham',
                                        color:
                                            Color.fromARGB(255, 125, 125, 125),
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
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "May 13th, 2019",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Gotham',
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              )),
            ]))));
  }
}
