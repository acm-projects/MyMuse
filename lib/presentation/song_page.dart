import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymuse/application/song/song_cubit.dart';
import 'package:mymuse/application/audio_player/audio_player_buttons.dart';
import 'package:mymuse/presentation/widgets/empty_widget.dart';
import 'package:mymuse/presentation/widgets/search_bar.dart';
import 'package:mymuse/presentation/widgets/song_list_view.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 42, 42),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                width: 10,
                height: 50,
              ),
              const SearchBar(),
              Expanded(
                child: BlocBuilder<SongCubit, SongState>(
                  builder: (context, state) => state.status.when(
                    initial: () => const EmptyWidget(
                      key: Key('__initial__'),
                      text: 'Start a search',
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    success: () => state.songs.isNotEmpty
                        ? SongListView(songs: state.songs)
                        : const EmptyWidget(
                            key: Key('__noResult__'),
                            text: 'No result',
                          ),
                    failure: () => const EmptyWidget(
                      key: Key('__searchFailed__'),
                      text: 'Something went wrong!',
                    ),
                  ),
                ),
              ),
              // const Align(
              //   alignment: Alignment.bottomCenter,
              //   child: AudioPlayerButtons(),
              // )
            ],
          )
        ],
      ),
    );
  }
}
