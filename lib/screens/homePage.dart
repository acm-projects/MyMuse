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
                                'i love this song!',
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

                  noFriendsAdded
                      ? Row()
                      : Column(children: [
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
                                            height: 60,
                                            decoration: const BoxDecoration(
                                              //borderRadius: BorderRadius.circular(200),
                                              image: DecorationImage(
                                                alignment: Alignment(-.95, 0),
                                                image: AssetImage(
                                                    'assets/FakeProfileSmall.png'),
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
                                                      "mangotreev2",
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
                        ]),

                  noFriendsAdded
                      ? Row()
                      : SizedBox(
                            height: 20,
                            width: 300,
                            child: Text(
                              "I am Taylor's #1 Fan!!!",
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
                                image: AssetImage('assets/Taylor.png'),
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
                                              "...Ready For it?",
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
