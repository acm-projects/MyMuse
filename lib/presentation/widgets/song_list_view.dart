
import 'package:flutter/material.dart';
import 'package:mymuse/application/audio_player/audio_player_cubit.dart';
import 'package:mymuse/domain/song.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymuse/screens/feed.dart';
import 'package:mymuse/screens/postMuse.dart';
import 'package:mymuse/screens/trash.dart';
import 'package:mymuse/screens/homePage.dart';
import 'package:mymuse/responsive/mobile_screen_layout.dart';
import 'package:mymuse/presentation/widgets/new_muse.dart';

class SongListView extends StatelessWidget {
  final List<Song> songs;
  const SongListView({
    Key? key,
    required this.songs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songs.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            context
                  .read<AudioPlayerCubit>()
                  .seekToIndex(index: index, playList: songs);                    
                  noMusePostedPage = false;

                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const AddPostScreen(),
                      ));


          },
          child: Card(
            elevation: 2,
            color: Colors.black45,
            margin: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            child: Row(
              children: [
                // Widget displaying the artwork of the song.
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 25.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: songs[index].artworkUrl100 != null
                          ? Image.network(
                              songs[index].artworkUrl100!,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Image.asset(
                                'assets/no_artwork_available.png',
                                fit: BoxFit.cover,
                              ),
                            )
                          : Image.asset(
                              'assets/no_artwork_available.png',
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),

                // Widget displaying song name, artist name and album name.
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          songs[index].trackName ?? 'Unknown Track',
                          style: Theme.of(context).textTheme.subtitle1,
                          textScaleFactor: 1.1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(songs[index].artistName ?? 'Unknown Artist',
                            style: Theme.of(context).textTheme.bodyText2),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(songs[index].collectionName ?? 'Unknown Album',
                            style: Theme.of(context).textTheme.caption),
                      ],
                    ),
                  ),
                ),

                // Widget displaying the selected/playing song indicator.
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     const SizedBox(width: 20.0),
                //     BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
                //       builder: (context, state) {
                //         if (state.currentIndex == index &&
                //             state.isPlaying &&
                //             songs[index].previewUrl ==
                //                 state.playList[index].previewUrl) {
                //           return const Padding(
                //             padding: EdgeInsets.only(right: 20.0),
                //             child: Icon(
                //               Icons.bar_chart,
                //               color: Colors.purple,
                              
                //             ),
                            
                            
                //           );
                //         }
                //         return const Padding(
                //           padding: EdgeInsets.only(right: 20.0),
                //           child: Icon(
                //             Icons.play_arrow,
                //             color: Colors.white,
                //           ),
                //         );
                //       },
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}