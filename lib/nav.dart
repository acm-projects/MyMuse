// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/homePage.dart';
import 'package:mymuse/monthlyBreakdown.dart';

import 'comments.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const navMain(),
    );
  }
}

class navMain extends StatefulWidget {
  const navMain({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RunState createState() => _RunState();
}

int _currentIndex = 0;

class _RunState extends State<navMain> {
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [homePage(), comments(), monthlyBreakdown()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentIndex,
        onTap: changePage,
        backgroundColor: Colors.deepPurpleAccent[400],
        dotIndicatorColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        items: [
          /// Home
          DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Color.fromARGB(255, 255, 255, 255)),

          /// Likes
          DotNavigationBarItem(
              icon: const Icon(Icons.group),
              selectedColor: Color.fromARGB(255, 255, 255, 255)),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}
