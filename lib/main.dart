import 'package:flutter/material.dart';
import 'package:mymuse/createAccount.dart';
import 'package:mymuse/login.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 108, 0, 0),
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
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 80, 50, 0),
              child: Text(
                "Share your music with the world.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42.0,
                  fontFamily: 'Gotham',
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 112.0,
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
                child: OutlinedButton(
                  child: const Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 22.0,
            ),
            Row(children: const <Widget>[
              Expanded(
                child: Divider(
                  indent: 22,
                  color: Color.fromARGB(255, 180, 179, 179),
                  thickness: 1.5,
                ),
              ),
              Expanded(
                  child: SizedBox(
                      width: 10,
                      child: Text(
                        'or',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.0,
                          fontFamily: 'Gotham',
                          color: Color.fromARGB(255, 180, 179, 179),
                        ),
                      ))),
              Expanded(
                child: Divider(
                  endIndent: 22,
                  color: Color.fromARGB(255, 180, 179, 179),
                  thickness: 1.5,
                ),
              ),
            ]),
            const SizedBox(
              height: 22.0,
            ),
            Center(
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
        )));
  }
}
