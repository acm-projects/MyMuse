//ignore_for_file: unnecessary_import, use_key_in_widget_constructors, camel_case_types, file_names

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/screens/uploadSong.dart';
import 'package:mymuse/presentation/song_page.dart';
import 'package:mymuse/application/audio_player/audio_player_cubit.dart';
import 'package:mymuse/application/song/song_cubit.dart';
import 'package:mymuse/infrastructure/song_remote_repository.dart';
import 'package:mymuse/infrastructure/song_remote_service.dart';
import 'package:mymuse/presentation/song_page.dart';
import 'package:mymuse/main.dart';

//import 'package:mymuse/uploadSong.dart';

void main() => runApp(MaterialApp(
  home: homePage(),
));

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SingleChildScrollView(
                          child: Column(children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                              child: Container(
                                height: 67,
                                width: 73,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/LogoSmall.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 335.0,
                                height: 84.0,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 150, 52, 200),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: OutlinedButton(
                                  child: const Text(
                                    'Post your MyMuse',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Gotham',
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SongPage()));
                                  },
                                ),
                              ),
                            ),
                
                
 
                          ]))
                    ]))));
  }
}