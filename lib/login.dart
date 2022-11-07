// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, camel_case_types

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/main.dart';

import 'nav.dart';

void main() => runApp(MaterialApp(
      home: login(),
    ));

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 325, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
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
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/LogoLarge.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 62.0,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Text(
                  "Connect with your friends through music.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 38.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 62.0,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(43, 0, 258, 9),
                child: Text(
                  "Username",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Container(
                    width: 346.0,
                    height: 53.0,
                    decoration: BoxDecoration(
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
                          contentPadding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Gotham',
                            color: Color.fromARGB(255, 180, 179, 179),
                          ),
                          hintText: ('Enter your username / email'),
                        ))),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(43, 28, 258, 9),
                child: Text(
                  "Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Container(
                    width: 346.0,
                    height: 53.0,
                    decoration: BoxDecoration(
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
                          contentPadding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Gotham',
                            color: Color.fromARGB(255, 180, 179, 179),
                          ),
                          hintText: ('Enter your password'),
                        ))),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(43, 5, 240, 8),
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Gotham',
                    color: Color.fromARGB(255, 101, 31, 255),
                  ),
                ),
              ),
              const Center(
                child: Divider(
                  indent: 27,
                  endIndent: 27,
                  color: Color.fromARGB(255, 180, 179, 179),
                  thickness: .8,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: 346.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent[400],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: OutlinedButton(
                    child: const Text(
                      'Log in',
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
                              builder: (context) => const navMain()));
                    },
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
