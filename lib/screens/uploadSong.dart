// ignore: file_names
// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, camel_case_types, file_names, duplicate_ignore

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/responsive/mobile_screen_layout.dart';

import 'homePage.dart';

// ignore: must_be_immutable
class uploadSong extends StatefulWidget {
  const uploadSong({Key? key}) : super(key:key);

  @override
  State<uploadSong> createState() => _uploadSongState();
}

class _uploadSongState extends State<uploadSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MobileScreenLayout()));
          },
        ),
        title: const Text('Post to'),
        centerTitle: false,
        actions: [
          TextButton(onPressed: (){}, child: const Text('Muse!', style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 20.0,
            fontFamily: 'Gotham',
          ),))
        ],
      ),

    );
  }
}