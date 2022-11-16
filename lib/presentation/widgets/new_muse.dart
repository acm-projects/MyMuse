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
import 'package:mymuse/presentation/widgets/audio_player_buttons.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymuse/application/audio_player/audio_player_cubit.dart';

import '../../models/user.dart';
import '../../providers/user_provider.dart';

void main() => runApp(MaterialApp(
      home: newMuse(),
    ));

class newMuse extends StatefulWidget {
  const newMuse({Key? key}) : super(key: key);

  @override
  State<newMuse> createState() => _newMuseState();
}

class _newMuseState extends State<newMuse> {
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).getUser;

        return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      builder: (context, state) {
        if (state.playList.isNotEmpty &&
            (state.currentIndex <= state.playList.length)) {
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
              Column(children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          user.photoUrl,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                          child: SizedBox(
                            height: 50,
                            width: 150,
                            child: Text(
                              user.username,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ]),
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),

                child: SizedBox(
                      width: 330,
                      height: 330,
                      child: state.playList[state.currentIndex].artworkUrl100 !=
                              null
                          ? Image.network(
                              state.playList[state.currentIndex].artworkUrl100!,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/no_artwork_available.png',
                              fit: BoxFit.cover,
                            ),
                    ),
                                    ),

                Column(children: [
                  Row(children: [
                    Container(
                        color: const Color.fromARGB(255, 42, 42, 42),
                        margin: const EdgeInsets.fromLTRB(22.5, 0, 0, 0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          splashColor: const Color.fromARGB(255, 42, 42, 42),
                          child: SizedBox(
                            width: 230,
                            height: 60,
                            child: Column(children: const [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 11, 0, 0),
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
                                padding: EdgeInsets.fromLTRB(10, 2, 0, 1),
                                child: SizedBox(
                                    height: 14,
                                    width: 300,
                                    child: Text(
                                      "Taylor Swift",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Gotham',
                                        color:
                                            Color.fromARGB(255, 180, 179, 179),
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
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              // child: TextButton(
                              //     onPressed: () {
                              //       setState(() {
                              //         default_heart = 'assets/HeartPurple.png';
                              //       });
                              //     },
                              //     child: Image.asset(default_heart)),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => comments()));
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/Comment.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ]),
                ]),
              ])
            ]))
          ],
        )

                //  const Align(
                //    alignment: Alignment.bottomCenter,
                //    child: AudioPlayerButtons(),
                //  )
                

                )));
            }
                return const SizedBox();
            },
        );
  }
}
