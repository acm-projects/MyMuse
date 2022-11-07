import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymuse/application/song/song_cubit.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(65, 2, 0, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: TextFormField(
              style: const TextStyle(
                fontSize: 16.0,
                fontFamily: 'Gotham',
                color: Colors.white,
                decorationThickness: 0,
              ),
              key: const Key('__searchTextField__'),
              controller: _textEditingController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(19, 18, 40, 0),
                hintText: 'Artists, Songs, and Albums',
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontFamily: 'Gotham',
                ),
                suffixIcon: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _textEditingController.clear();
                  },
                ),
              ),
              textInputAction: TextInputAction.done,
              onEditingComplete: () async {
                if (_textEditingController.text.isNotEmpty) {
                  final song = _textEditingController.text;
                  await context.read<SongCubit>().fetchSongs(song);
                  // ignore: use_build_context_synchronously
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
            ),
          ),
          // Container(
          //   width: 306.0,
          //   height: 53.0,
          //   decoration: BoxDecoration(
          //     border: Border.all(
          //       width: 1.3,
          //       color: const Color.fromARGB(255, 180, 179, 179),
          //     ),
          //     borderRadius: BorderRadius.circular(30),
          //   ),
          // ),
          Expanded(
            flex: 1,
            child: IconButton(
              color: Colors.white,
              key: const Key('__searchButton__'),
              icon: const Icon(Icons.search),
              onPressed: () async {
                if (_textEditingController.text.isNotEmpty) {
                  final song = _textEditingController.text;
                  await context.read<SongCubit>().fetchSongs(song);
                  // ignore: use_build_context_synchronously
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
