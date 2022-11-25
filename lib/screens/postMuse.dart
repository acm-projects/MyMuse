import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mymuse/presentation/widgets/song_list_view.dart';
import 'package:mymuse/resources/firestore_methods.dart';
import 'package:mymuse/resources/storage_methods_v2.dart';
import 'package:mymuse/responsive/mobile_screen_layout.dart';
import 'package:mymuse/utils/utils.dart';
import 'package:provider/provider.dart';

import '../application/audio_player/audio_player_cubit.dart';
import '../models/user.dart';
import '../presentation/widgets/audio_player_buttons.dart';
import '../providers/user_provider.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController _descriptionController = TextEditingController();
  String? _artworkUrl100 =
      'https://upload.wikimedia.org/wikipedia/en/9/9f/Midnights_-_Taylor_Swift.png';
  bool _isLoading = false;

  //String? _artworkUrl100;

  //_artworkUrl100 = setVals(_artworkUrl100);

  // var len = _artworkUrl100?.length ?? 0;

  void postMyMuse(
    String uid,
    String username,
    String profImage,
  ) async {
    setState(() {
      _isLoading = true;
    });
    try {
      String res = await FireStoreMethods().uploadMyMuse(
        _descriptionController.text,
        _artworkUrl100!,
        uid,
        username,
        profImage,
      );
      if (res == "success") {
        setState(() {
          _isLoading = false;
        });
        showSnackBar('Posted!', context);
      } else {
        setState(() {
          _isLoading = false;
        });
        showSnackBar(res, context);
      }
    } catch (e) {
      showSnackBar(e.toString(), context);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MobileScreenLayout()));
          },
        ),
        title: const Text(' '),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.music_note),
            color: Colors.deepPurpleAccent,
            onPressed: () {
              postMyMuse(
              user.uid,
              user.username,
              user.photoUrl,
            );

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MobileScreenLayout()));
            },
          ),
          // TextButton(
          //   onPressed: () => postMyMuse(
          //     user.uid,
          //     user.username,
          //     user.photoUrl,
          //   ),
          //   child: const Text(
          //     'Muse!',
          //     style: TextStyle(
          //       color: Colors.deepPurpleAccent,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 18,
          //     ),
          //   ),
          // )
        ],
      ),

      body: Column(
        children: [
          _isLoading
              ? const LinearProgressIndicator()
              : const Padding(
                  padding: EdgeInsets.only(top: 0),
                ),
          const Divider(),
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
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    hintText: 'Write a caption...',
                    border: InputBorder.none,
                  ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
          Column(
            children: const [AudioPlayerButtons()],
          ),
        ],
      ),

      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     CircleAvatar(
      //       backgroundImage: NetworkImage(
      //         'https://images.unsplash.com/photo-1669053938181-fdbed6339056?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      //       ),
      //     ),
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * 0.7,
      //       child: TextField(
      //         decoration: const InputDecoration(
      //           hintText: 'Write a caption...',
      //           border: InputBorder.none,
      //         ),
      //         maxLines: 8,
      //       ),
      //     ),
      //   ],
      // )
      //],
    );
  }
}
