// ignore: file_names
// ignore_for_file: unnecessary_import, prefer_const_constructors, library_private_types_in_public_api, file_names, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; /*
import 'package:test_flutter/addfriends.dart';
import 'package:test_flutter/friendrequest.dart';*/
import 'package:mymuse/UserProfile.dart';
import 'package:mymuse/nav.dart';
//import 'package:test_flutter/userprofile.dart';

//import 'main.dart';

void main() => runApp(MaterialApp(
      home: EditProfile(),
    ));

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  TextEditingController textarea = TextEditingController();
  bool isChecked =
      false; // This holds the state of the checkbox, we call setState and update this whenever a user taps the checkbox

  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return Colors.deepPurpleAccent;
    //   }
    //   return Colors.deepPurpleAccent;
    // }

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
                                    builder: (context) => navMain()));
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
                              image: AssetImage('assets/LogoLarge.png'),
                            ),
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
                          image: AssetImage('assets/Large.png'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 15, 22, 0),
                child: Container(
                  width: 167.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 42, 42, 42),
                    border: Border.all(
                      color: Color.fromARGB(255, 180, 179, 179),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: OutlinedButton(
                    child: const Text(
                      'Edit Photo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addFriends()));*/
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 18, 256, 10),
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
                          hintText: ('Enter your new username'),
                        ))),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 23, 258, 10),
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
                          hintText: ('Enter your new password'),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 15, 50, 0),
                child: Row(
                  children: [
                    Checkbox(
                      // NOT CHECKING
                      checkColor: Colors.white,
                      // tileColor: Color.fromARGB(255, 42, 42, 42),
                      activeColor: Colors.deepPurpleAccent,
                      side: BorderSide(
                        color: Color.fromARGB(255, 180, 179, 179),
                      ),
                      // title: Text("Notifications"),
                      //fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      "Notifications",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Gotham',
                        color: Color.fromARGB(255, 180, 179, 179),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 17, 22, 20),
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
                      /*
                      // CHANGE USER FLOW HERE
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addFriends()));*/
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