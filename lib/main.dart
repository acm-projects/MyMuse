// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/friendrequest.dart';
import 'package:test_flutter/loadingpage.dart';
import 'package:test_flutter/userprofile.dart';
import 'package:test_flutter/editprofile.dart';
import 'package:test_flutter/addfriends.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserProfile(), // what is the main page
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2A2A2A),
      extendBody: true,
      body: Container(
          // child: Image.asset("lib/img/1.png"),
          ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          backgroundColor: Colors.deepPurpleAccent[400],
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          enableFloatingNavBar: true,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Colors.white,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.search),
              // padding: EdgeInsets.only(right: 10),
              selectedColor: Colors.white,
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.inbox),
              selectedColor: Colors.white,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
