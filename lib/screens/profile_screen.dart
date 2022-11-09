import 'package:flutter/material.dart';
import 'package:mymuse/main.dart';
import 'package:mymuse/screens/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mymuse/follow_button.dart';


import '../resources/auth_methods.dart';
import '../responsive/mobile_screen_layout.dart';

// ignore_for_file: file_names

class MonthlyBreakdown extends StatefulWidget {
  
  const MonthlyBreakdown({Key? key}) : super(key: key);

  @override 
  _MonthlyBreakdownState createState() => _MonthlyBreakdownState();
}


// ignore: camel_case_types, use_key_in_widget_constructors
class _MonthlyBreakdownState extends State<MonthlyBreakdown> {

  final FirebaseAuth auth = FirebaseAuth.instance;
  //signout function 
  signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        title: const Text('Profile'),
        centerTitle: false,
        actions: [
          TextButton(onPressed: () {
            signOut();

          }, child: const Text('LOGOUT', style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 20.0,
            fontFamily: 'Gotham',
          ),))
        ],
      ),

    );
  }
}