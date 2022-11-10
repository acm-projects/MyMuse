// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:mymuse/homePage.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/LogoLarge.png'),
      // ignore: prefer_const_constructors
      title: Text(
        "MyMuse",
        style: const TextStyle(
          fontSize: 37,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xFF2A2A2A),
      showLoader: true,
      // loadingText: Text("Loading..."),
      // loadingTextColor: Colors.white,
      loaderColor: Colors.white,
      navigator: homePage(),
      durationInSeconds: 5,
    );
  }
}
