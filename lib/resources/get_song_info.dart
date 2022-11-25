import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymuse/application/audio_player/audio_player_cubit.dart';
import 'package:mymuse/screens/postMuse.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../../providers/user_provider.dart';
import '../../resources/firestore_methods.dart';
import '../../utils/utils.dart';

class GetSongInfo extends StatefulWidget {
  const GetSongInfo({Key? key}) : super(key: key);

  @override
  State<GetSongInfo> createState() => _GetSongInfoState();
}

class _GetSongInfoState extends State<GetSongInfo> {

  String? _artistName;
  String? _collectionName;
  String? _trackName;
  String? _artworkUrl100;


  @override
  Widget build(BuildContext context) {

    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      builder: (context, state) {

  // String? setVals(String? val){
  //   val = state.playList[state.currentIndex].artworkUrl100;
  //   return val;
  // }


        setState(() {
          // _artistName = state.playList[state.currentIndex].artistName;
          // _collectionName = state.playList[state.currentIndex].collectionName;
          // _trackName = state.playList[state.currentIndex].trackName;
          _artworkUrl100 = state.playList[state.currentIndex].artworkUrl100;
        });


        return const SizedBox();
      },
    );

    
  }
}

