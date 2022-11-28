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

class MuseRectangle extends StatefulWidget {
  const MuseRectangle({Key? key}) : super(key: key);

  @override
  State<MuseRectangle> createState() => _MuseRectangleState();
}

class _MuseRectangleState extends State<MuseRectangle> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  final TextEditingController _descriptionController = TextEditingController();

  String? _artistName;
  String? _collectionName;
  String? _trackName;
  String? _artworkUrl100;

  void postMyMuseTwo(
    String uid,
    String username,
    String profImage,
  ) async {
    try {
      String res = await FireStoreMethods().uploadMyMuse(
        _descriptionController.text,
        _artworkUrl100!,
        // _artistName!,
        // _trackName!,
        uid,
        username,
        profImage,
      );

      if (res == "success") {
        showSnackBar('Posted!', context);
      } else {
        showSnackBar(res, context);
      }
    } catch (e) {
      showSnackBar(e.toString(), context);
    }
  }

  //     @override
  // void dispose() {
  //   super.dispose();
  //   _descriptionController.dispose();

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).getUser;

    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      builder: (context, state) {

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
           setState(() {
          _artworkUrl100 = state.playList[state.currentIndex].artworkUrl100;
        });
    });
  }

  String? setVals(String? val){
    val = state.playList[state.currentIndex].artworkUrl100;
    return val;
  }


        // setState(() {
        //   // _artistName = state.playList[state.currentIndex].artistName;
        //   // _collectionName = state.playList[state.currentIndex].collectionName;
        //   // _trackName = state.playList[state.currentIndex].trackName;
        //   _artworkUrl100 = state.playList[state.currentIndex].artworkUrl100;
        // });

        if (state.playList.isNotEmpty &&
            (state.currentIndex <= state.playList.length)) {
          return ClipRRect(
            child: Card(
              elevation: 2,
              color: Colors.black45,
              margin: const EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 25.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child:
                            state.playList[state.currentIndex].artworkUrl100 !=
                                    null
                                ? Image.network(
                                    state.playList[state.currentIndex]
                                        .artworkUrl100!,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'assets/no_artwork_available.png',
                                    fit: BoxFit.cover,
                                  ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.playList[state.currentIndex].trackName ??
                                'Unknown Track',
                            style: Theme.of(context).textTheme.subtitle1,
                            textScaleFactor: 1.1,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              state.playList[state.currentIndex].artistName ??
                                  'Unknown Artist',
                              style: Theme.of(context).textTheme.bodyText2),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              state.playList[state.currentIndex]
                                      .collectionName ??
                                  'Unknown Album',
                              style: Theme.of(context).textTheme.caption),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 86,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // IconButton(
                        //   icon: const Icon(Icons.skip_previous),
                        //   color: Colors.white,
                        //   onPressed: () async =>
                        //       context.read<AudioPlayerCubit>().hasPrevious
                        //           ? await context
                        //               .read<AudioPlayerCubit>()
                        //               .seekToPrevious()
                        //           : null,
                        // ),
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: Center(
                            child: state.status.maybeWhen(
                              buffering: () => const LoadingWidget(),
                              loading: () => const LoadingWidget(),
                              ready: () => IconButton(
                                icon: const Icon(Icons.play_arrow),
                                splashColor: Colors.transparent,
                                color: Colors.white,
                                onPressed: () async => await context
                                    .read<AudioPlayerCubit>()
                                    .play(),
                              ),
                              completed: () => IconButton(
                                icon: const Icon(Icons.replay),
                                splashColor: Colors.transparent,
                                color: Colors.white,
                                onPressed: () async => await context
                                    .read<AudioPlayerCubit>()
                                    .seekToStart(),
                              ),
                              playing: () => IconButton(
                                icon: const Icon(Icons.pause),
                                splashColor: Colors.transparent,
                                color: Colors.white,
                                onPressed: () async => await context
                                    .read<AudioPlayerCubit>()
                                    .pause(),
                              ),
                              orElse: () => const IconButton(
                                icon: Icon(Icons.play_arrow),
                                splashColor: Colors.transparent,
                                color: Colors.white,
                                onPressed: null,
                              ),
                            ),
                          ),
                        ),
                        // IconButton(
                        //   icon: const Icon(Icons.skip_next),
                        //   color: Colors.green,
                        //   onPressed: () async =>
                        //       context.read<AudioPlayerCubit>().hasNext
                        //           ? await context
                        //               .read<AudioPlayerCubit>()
                        //               .seekToNext()
                        //           : null,
                        // ),
                      ],
                    ),
                  ),

                  // SizedBox(
                  //   height: 120,
                  //   child: BackdropFilter(
                  //     filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  //     child: ListTile(
                  //       tileColor: Colors.grey.withOpacity(0.2),
                  //       leading: ClipRRect(
                  //         borderRadius: BorderRadius.circular(7.0),
                  //         child: SizedBox(
                  //           width: 60,
                  //           height: 60,
                  //         ),
                  //       ),

                  //       trailing: SizedBox(
                  //         width: 160,
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //           children: [
                  //             IconButton(
                  //               icon: const Icon(Icons.skip_previous),
                  //               color: Colors.white,
                  //               onPressed: () async =>
                  //                   context.read<AudioPlayerCubit>().hasPrevious
                  //                       ? await context
                  //                           .read<AudioPlayerCubit>()
                  //                           .seekToPrevious()
                  //                       : null,
                  //             ),
                  //             SizedBox(
                  //               width: 42,
                  //               height: 42,
                  //               child: Center(
                  //                 child: state.status.maybeWhen(
                  //                   buffering: () => const LoadingWidget(),
                  //                   loading: () => const LoadingWidget(),
                  //                   ready: () => IconButton(
                  //                     icon: const Icon(Icons.play_arrow),
                  //                     splashColor: Colors.transparent,
                  //                     color: Colors.white,
                  //                     onPressed: () async => await context
                  //                         .read<AudioPlayerCubit>()
                  //                         .play(),

                  //                   ),
                  //                   completed: () => IconButton(
                  //                     icon: const Icon(Icons.replay),
                  //                     splashColor: Colors.transparent,
                  //                     color: Colors.white,
                  //                     onPressed: () async => await context
                  //                         .read<AudioPlayerCubit>()
                  //                         .seekToStart(),
                  //                   ),
                  //                   playing: () => IconButton(
                  //                     icon: const Icon(Icons.pause),
                  //                     splashColor: Colors.transparent,
                  //                     color: Colors.white,
                  //                     onPressed: () async => await context
                  //                         .read<AudioPlayerCubit>()
                  //                         .pause(),
                  //                   ),
                  //                   orElse: () => const IconButton(
                  //                     icon: Icon(Icons.play_arrow),
                  //                     splashColor: Colors.transparent,
                  //                     color: Colors.white,
                  //                     onPressed: null,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             IconButton(
                  //               icon: const Icon(Icons.skip_next),
                  //               color: Colors.white,
                  //               onPressed: () async =>
                  //                   context.read<AudioPlayerCubit>().hasNext
                  //                       ? await context
                  //                           .read<AudioPlayerCubit>()
                  //                           .seekToNext()
                  //                       : null,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
                
              ),
              
            ),
          );
        }
        return const SizedBox();
      },
    );

    
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 18,
      height: 18,
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 3,
          color: Colors.white,
        ),
      ),
    );
  }
}
