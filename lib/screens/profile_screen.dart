import 'package:flutter/material.dart';
import 'package:mymuse/main.dart';
import 'package:mymuse/screens/login_screen.dart';

import '../resources/auth_methods.dart';
import '../responsive/mobile_screen_layout.dart';

// ignore_for_file: file_names


void main() => runApp(MaterialApp(
  home: monthlyBreakdown(),
));

// ignore: camel_case_types, use_key_in_widget_constructors
class monthlyBreakdown extends StatelessWidget {

  const monthlyBreakdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        title: const Text('Profile'),
        centerTitle: false,
        actions: [
          TextButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MobileScreenLayout()));

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