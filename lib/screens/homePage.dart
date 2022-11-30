//ignore_for_file: unnecessary_import, use_key_in_widget_constructors, camel_case_types, file_names

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/presentation/widgets/post_card.dart';
import 'package:mymuse/screens/uploadSong.dart';
import 'package:mymuse/presentation/song_page.dart';
import 'package:mymuse/application/audio_player/audio_player_cubit.dart';
import 'package:mymuse/application/song/song_cubit.dart';
import 'package:mymuse/infrastructure/song_remote_repository.dart';
import 'package:mymuse/infrastructure/song_remote_service.dart';
import 'package:mymuse/presentation/song_page.dart';
import 'package:mymuse/main.dart';
import 'package:mymuse/presentation/widgets/audio_player_buttons.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import '../providers/user_provider.dart';
import 'comments_screen.dart';

//import 'package:mymuse/uploadSong.dart';

bool noMusePostedPage = true;
bool noFriendsAdded = true;

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
    final User user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: [
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
                    child: (noMusePostedPage
                        ? Container(
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
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    user.photoUrl,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                                    child: SizedBox(
                                      height: 35,
                                      width: 300,
                                      child: Text(
                                        user.username,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                              ])),

                    //  const Align(
                    //    alignment: Alignment.bottomCenter,
                    //    child: AudioPlayerButtons(),
                    //  )
                  ),
                  Column(
                    children: const [AudioPlayerButtons()],
                  ),

                  // DESCRIPTION

                  noMusePostedPage
                      ? Row()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.93,
                              //height: MediaQuery.of(context).size.height * 0.93,
                              child: Text(
                                'you need to listen to this',
                                //textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Gotham',
                                  color: Colors.white,
                                ),
                              ),
                            
                            ),
                            
                          ],
                        ),

                        // Column(
                        //       children: [
                        //         Padding(
                        //             padding:
                        //                 const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        //             child: SizedBox(
                        //               width: 40,
                        //               height: 40,
                        //               child: TextButton(
                        //                   onPressed: () {
                        //                     setState(() {
                        //                       default_heart =
                        //                           'assets/HeartPurple.png';
                        //                     });
                        //                   },
                        //                   child: Image.asset(default_heart)),
                        //             ))
                        //       ],
                        //     ),

                  Column(children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            indent: 15,
                            endIndent: 15,
                            color: Color.fromARGB(255, 180, 179, 179),
                            thickness: 2,
                          ),
                          noFriendsAdded
                              ? Row()
                              : Row(
                                  children: [
                                    Container(
                                        color: const Color.fromARGB(
                                            255, 42, 42, 42),
                                        margin: const EdgeInsets.fromLTRB(
                                            22.5, 10, 0, 0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          splashColor: const Color.fromARGB(
                                              255, 42, 42, 42),
                                          child: Container(
                                            width: 344,
                                            height: 49,
                                            decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.circular(200),
                                              image: DecorationImage(
                                                alignment: Alignment(-.95, 0),
                                                image: AssetImage(
                                                    'assets/faiza.png'),
                                              ),
                                            ),
                                            child: Column(children: const [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      65, 12, 0, 0),
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 300,
                                                    child: Text(
                                                      "faiza",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontFamily: 'Gotham',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 2, 0, 1),
                                                child: SizedBox(
                                                    height: 14,
                                                    width: 300,
                                                    child: Text(
                                                      "1 second ago",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontFamily: 'Gotham',
                                                        color: Color.fromARGB(
                                                            255, 125, 125, 125),
                                                      ),
                                                    )),
                                              ),
                                            ]),
                                          ),
                                          onTap: () {
                                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                          },
                                        ))
                                  ],
                                ),
                                SizedBox(
                                                    height: 8),
                        ]),

                  noFriendsAdded
                      ? Row()
                      : SizedBox(
                            height: 20,
                            width: 300,
                            child: Text(
                              "in my red era",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),

                  noFriendsAdded
                      ? Row()
                      : Padding(
                          padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                          

                          child: Container(
                            height: 330,
                            width: 330,
                            decoration: BoxDecoration(
                              //border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/9/9f/Midnights_-_Taylor_Swift.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                  noFriendsAdded
                      ? Row()
                      : Column(children: [
                          Row(children: [
                            Container(
                                color: const Color.fromARGB(255, 42, 42, 42),
                                margin:
                                    const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  splashColor:
                                      const Color.fromARGB(255, 42, 42, 42),
                                  child: SizedBox(
                                    width: 230,
                                    height: 60,
                                    child: Column(children: const [
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 11, 0, 0),
                                          child: SizedBox(
                                            height: 32,
                                            width: 350,
                                            child: Text(
                                              "Maroon",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 29.0,
                                                fontFamily: 'Gotham',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 0, 1),
                                        child: SizedBox(
                                            height: 14,
                                            width: 300,
                                            child: Text(
                                              "Taylor Swift",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontFamily: 'Gotham',
                                                color: Color.fromARGB(
                                                    255, 180, 179, 179),
                                              ),
                                            )),
                                      ),
                                    ]),
                                  ),
                                  onTap: () {
                                    /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                  },
                                )),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              default_heart =
                                                  'assets/HeartPurple.png';
                                            });
                                          },
                                          child: Image.asset(default_heart)),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      comments()));
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Comment.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ]),
                        ]),

                                 SizedBox(
                                            height: 14,
                                            width: 300,),
            

              // OUR PROFILES!!!!

                        Row(
                                  children: [
                                    Container(
                                        color: const Color.fromARGB(
                                            255, 42, 42, 42),
                                        margin: const EdgeInsets.fromLTRB(
                                            22.5, 10, 0, 0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          splashColor: const Color.fromARGB(
                                              255, 42, 42, 42),
                                          child: Container(
                                            width: 344,
                                            height: 49,
                                            decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.circular(200),
                                              image: DecorationImage(
                                                alignment: Alignment(-.95, 0),
                                                image: AssetImage(
                                                    'assets/dheeptha.png'),
                                              ),
                                            ),
                                            child: Column(children: const [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      65, 12, 0, 0),
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 300,
                                                    child: Text(
                                                      "dheepdheep",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontFamily: 'Gotham',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 2, 0, 1),
                                                child: SizedBox(
                                                    height: 14,
                                                    width: 300,
                                                    child: Text(
                                                      "10 minutes ago",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontFamily: 'Gotham',
                                                        color: Color.fromARGB(
                                                            255, 125, 125, 125),
                                                      ),
                                                    )),
                                              ),
                                            ]),
                                          ),
                                          onTap: () {
                                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                          },
                                        ))
                                  ],
                                ),

                                                               SizedBox(
                                                    height: 8),

                                SizedBox(
                            height: 20,
                            width: 300,
                            child: Text(
                              "on repeattt",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),

                          Padding(
                          padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                          

                          child: Container(
                            height: 330,
                            width: 330,
                            decoration: BoxDecoration(
                              //border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/2/2b/B.I_Waterfall_Album_Cover.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Column(children: [
                          Row(children: [
                            Container(
                                color: const Color.fromARGB(255, 42, 42, 42),
                                margin:
                                    const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  splashColor:
                                      const Color.fromARGB(255, 42, 42, 42),
                                  child: SizedBox(
                                    width: 230,
                                    height: 60,
                                    child: Column(children: const [
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 11, 0, 0),
                                          child: SizedBox(
                                            height: 32,
                                            width: 350,
                                            child: Text(
                                              "Waterfall",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 29.0,
                                                fontFamily: 'Gotham',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 0, 1),
                                        child: SizedBox(
                                            height: 14,
                                            width: 300,
                                            child: Text(
                                              "B.I.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontFamily: 'Gotham',
                                                color: Color.fromARGB(
                                                    255, 180, 179, 179),
                                              ),
                                            )),
                                      ),
                                    ]),
                                    
                                  ),

                                  
                                  onTap: () {
                                    /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                  },
                                )),
                                
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              default_heart =
                                                  'assets/HeartPurple.png';
                                            });
                                          },
                                          child: Image.asset(default_heart)),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      comments()));
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Comment.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ]),
                        ]),

                        SizedBox(
                                            height: 14,
                                            width: 300,),

// OUR PROFILES!!!!

                        Row(
                                  children: [
                                    Container(
                                        color: const Color.fromARGB(
                                            255, 42, 42, 42),
                                        margin: const EdgeInsets.fromLTRB(
                                            22.5, 10, 0, 0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          splashColor: const Color.fromARGB(
                                              255, 42, 42, 42),
                                          child: Container(
                                            width: 360,
                                            height: 49,
                                            decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.circular(200),
                                              image: DecorationImage(
                                                alignment: Alignment(-.95, 0),
                                                image: AssetImage(
                                                    'assets/max.png'),
                                              ),
                                            ),
                                            child: Column(children: const [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      65, 12, 0, 0),
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 300,
                                                    child: Text(
                                                      "iammaxlichter",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontFamily: 'Gotham',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 2, 0, 1),
                                                child: SizedBox(
                                                    height: 14,
                                                    width: 300,
                                                    child: Text(
                                                      "19 minutes ago",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontFamily: 'Gotham',
                                                        color: Color.fromARGB(
                                                            255, 125, 125, 125),
                                                      ),
                                                    )),
                                              ),
                                            ]),
                                          ),
                                          onTap: () {
                                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                          },
                                        ))
                                  ],
                                ),
                                SizedBox(
                                                    height: 8),

                                SizedBox(
                            height: 20,
                            width: 300,
                            child: Text(
                              "this song makes me feel like there",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),
                             SizedBox(
                            height: 20,
                            width: 300,
                            child: Text(
                              "are bugs in my skins!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),

                          Padding(
                          padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                          

                          child: Container(
                            height: 330,
                            width: 330,
                            decoration: BoxDecoration(
                              //border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage('https://images.genius.com/a094a04de52f3c9465a5819ee5e6d1e6.1000x1000x1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Column(children: [
                          Row(children: [
                            Container(
                                color: const Color.fromARGB(255, 42, 42, 42),
                                margin:
                                    const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  splashColor:
                                      const Color.fromARGB(255, 42, 42, 42),
                                  child: SizedBox(
                                    width: 230,
                                    height: 60,
                                    child: Column(children: const [
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 11, 0, 0),
                                          child: SizedBox(
                                            height: 32,
                                            width: 350,
                                            child: Text(
                                              "21",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 29.0,
                                                fontFamily: 'Gotham',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 0, 1),
                                        child: SizedBox(
                                            height: 14,
                                            width: 300,
                                            child: Text(
                                              "Gracie Abrams",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontFamily: 'Gotham',
                                                color: Color.fromARGB(
                                                    255, 180, 179, 179),
                                              ),
                                            )),
                                      ),
                                    ]),
                                  ),
                                  onTap: () {
                                    /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                  },
                                )),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              default_heart =
                                                  'assets/HeartPurple.png';
                                            });
                                          },
                                          child: Image.asset(default_heart)),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      comments()));
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Comment.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ]),
                        ]),

                        SizedBox(
                                            height: 14,
                                            width: 300,),

// OUR PROFILES!!!!

                        Row(
                                  children: [
                                    Container(
                                        color: const Color.fromARGB(
                                            255, 42, 42, 42),
                                        margin: const EdgeInsets.fromLTRB(
                                            22.5, 10, 0, 0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          splashColor: const Color.fromARGB(
                                              255, 42, 42, 42),
                                          child: Container(
                                            width: 344,
                                            height: 49,
                                            decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.circular(200),
                                              image: DecorationImage(
                                                alignment: Alignment(-.95, 0),
                                                image: AssetImage(
                                                    'assets/mani.png'),
                                              ),
                                            ),
                                            child: Column(children: const [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      65, 12, 0, 0),
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 300,
                                                    child: Text(
                                                      "manasivipat",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontFamily: 'Gotham',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 2, 0, 1),
                                                child: SizedBox(
                                                    height: 14,
                                                    width: 300,
                                                    child: Text(
                                                      "28 minutes ago",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontFamily: 'Gotham',
                                                        color: Color.fromARGB(
                                                            255, 125, 125, 125),
                                                      ),
                                                    )),
                                              ),
                                            ]),
                                          ),
                                          onTap: () {
                                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                          },
                                        ))
                                  ],
                                ),
                                 SizedBox(
                                                    height: 8),

                                SizedBox(
                            height: 20,
                            width: 300,
                            child: Text(
                              "current fave",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),

                          Padding(
                          padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                          

                          child: Container(
                            height: 330,
                            width: 330,
                            decoration: BoxDecoration(
                              //border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage('https://i.scdn.co/image/ab67616d0000b2731be160c998dd52e1a7df74e4'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Column(children: [
                          Row(children: [
                            Container(
                                color: const Color.fromARGB(255, 42, 42, 42),
                                margin:
                                    const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  splashColor:
                                      const Color.fromARGB(255, 42, 42, 42),
                                  child: SizedBox(
                                    width: 230,
                                    height: 60,
                                    child: Column(children: const [
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 11, 0, 0),
                                          child: SizedBox(
                                            height: 32,
                                            width: 350,
                                            child: Text(
                                              "Close The Door",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 28.0,
                                                fontFamily: 'Gotham',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 0, 1),
                                        child: SizedBox(
                                            height: 14,
                                            width: 300,
                                            child: Text(
                                              "Weston Estate",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontFamily: 'Gotham',
                                                color: Color.fromARGB(
                                                    255, 180, 179, 179),
                                              ),
                                            )),
                                      ),
                                    ]),
                                  ),
                                  onTap: () {
                                    /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                  },
                                )),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              default_heart =
                                                  'assets/HeartPurple.png';
                                            });
                                          },
                                          child: Image.asset(default_heart)),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      comments()));
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Comment.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ]),
                        ]),

                        SizedBox(
                                            height: 14,
                                            width: 300,),

                        // OUR PROFILES!!!!

                        Row(
                                  children: [
                                    Container(
                                        color: const Color.fromARGB(
                                            255, 42, 42, 42),
                                        margin: const EdgeInsets.fromLTRB(
                                            22.5, 10, 0, 0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          splashColor: const Color.fromARGB(
                                              255, 42, 42, 42),
                                          child: Container(
                                            width: 344,
                                            height: 49,
                                            decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.circular(200),
                                              image: DecorationImage(
                                                alignment: Alignment(-.95, 0),
                                                image: AssetImage(
                                                    'assets/eman.png'),
                                              ),
                                            ),
                                            child: Column(children: const [
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      65, 12, 0, 0),
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 300,
                                                    child: Text(
                                                      "emanananana",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontFamily: 'Gotham',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    65, 2, 0, 1),
                                                child: SizedBox(
                                                    height: 14,
                                                    width: 300,
                                                    child: Text(
                                                      "36 minutes ago",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontFamily: 'Gotham',
                                                        color: Color.fromARGB(
                                                            255, 125, 125, 125),
                                                      ),
                                                    )),
                                              ),
                                            ]),
                                          ),
                                          onTap: () {
                                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                          },
                                        ))
                                  ],
                                ),

                                 SizedBox(
                                                    height: 8),

                                SizedBox(
                            height: 20,
                            width: 300,
                            child: Text(
                              "pharb 4 life",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.grey.shade100,
                              ),
                            ),
                          ),

                          Padding(
                          padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                          

                          child: Container(
                            height: 330,
                            width: 330,
                            decoration: BoxDecoration(
                              //border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage('https://ourculturemag.com/wp-content/uploads/2020/08/333B7425-1-scaled.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Column(children: [
                          Row(children: [
                            Container(
                                color: const Color.fromARGB(255, 42, 42, 42),
                                margin:
                                    const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  splashColor:
                                      const Color.fromARGB(255, 42, 42, 42),
                                  child: SizedBox(
                                    width: 230,
                                    height: 60,
                                    child: Column(children: const [
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 11, 0, 0),
                                          child: SizedBox(
                                            height: 32,
                                            width: 350,
                                            child: Text(
                                              "I Know The End",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 27.0,
                                                fontFamily: 'Gotham',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 0, 1),
                                        child: SizedBox(
                                            height: 14,
                                            width: 300,
                                            child: Text(
                                              "Phoebe Bridgers",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontFamily: 'Gotham',
                                                color: Color.fromARGB(
                                                    255, 180, 179, 179),
                                              ),
                                            )),
                                      ),
                                    ]),
                                  ),
                                  onTap: () {
                                    /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => friendProfile()));*/
                                  },
                                )),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              default_heart =
                                                  'assets/HeartPurple.png';
                                            });
                                          },
                                          child: Image.asset(default_heart)),
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      comments()));
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/Comment.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ]),
                        ]),




                  // Row(
                  //   children: [
                  //     Expanded(child: Align(alignment: Alignment.bottomRight,
                  //     child: IconButton(icon: const Icon(Icons.favorite, color: Colors.purple),
                  //     onPressed: (){},
                  //     ),
                  //     )
                  //     ),
                  //     // IconButton(
                  //     //   onPressed: () {},
                  //     //   icon: const Icon(
                  //     //     Icons.favorite,
                  //     //     color: Colors.purple,
                  //     //   ),
                  //     // ),
                  //     IconButton(
                  //       onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => comments(),),),
                  //       icon: const Icon(
                  //         Icons.comment_sharp,
                  //         //color: Colors.purple,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ))));
  }
}
