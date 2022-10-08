// ignore_for_file: unnecessary_import, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() => runApp(const MaterialApp(
      home: createAccount(),
    ));

// ignore: camel_case_types
class createAccount extends StatelessWidget {
  const createAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 89, 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
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
                  Center(
                    child: Container(
                      height: 60,
                      width: 95,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/LogoSmall.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(43, 30, 250, 9),
              child: Text(
                "Full Name",
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
                        hintText: ('Enter your First and Last name'),
                      ))),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(43, 18, 258, 9),
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
                        hintText: ('Enter your Username'),
                      ))),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(43, 18, 258, 9),
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
              padding: EdgeInsets.fromLTRB(43, 5, 90, 8),
              child: Text(
                "password must contain 8+ characters and minimum one number",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 8.0,
                  fontFamily: 'Gotham',
                  color: Color.fromARGB(255, 180, 179, 179),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(43, 18, 184, 9),
              child: Text(
                "Confirm Password",
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
              padding: EdgeInsets.fromLTRB(43, 18, 295, 9),
              child: Text(
                "Email",
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
                        hintText: ('Enter your email'),
                      ))),
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Divider(
                indent: 27,
                endIndent: 27,
                color: Color.fromARGB(255, 180, 179, 179),
                thickness: .8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 25, 22, 9),
              child: Container(
                width: 346.0,
                height: 53.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 150, 52, 200),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: OutlinedButton(
                  child: const Text(
                    'Create Account',
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
                            builder: (context) => const createAccount()));
                  },
                ),
              ),
            ),
          ],
        ))));
  }
}
