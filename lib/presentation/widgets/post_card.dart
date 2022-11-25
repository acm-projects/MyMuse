//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../../providers/user_provider.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
   
   final User user = Provider.of<UserProvider>(context).getUser;

    return Container(
      color: Colors.black45,
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16
            ).copyWith(right: 0),
            child: Row(children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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',
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('username', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ],)

          )
        ],
      )
    );
  }
}