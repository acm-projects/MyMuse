import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/screens/profile_screen.dart';
import 'package:mymuse/screens/homePage.dart';
import 'package:mymuse/screens/search_screen.dart';
import 'package:mymuse/screens/feed.dart';
import 'package:mymuse/presentation/widgets/new_muse.dart';

import '../screens/homePage.dart';


List<Widget> homeScreenItems = [
  //newMuse(),
  const homePage(),
  const SearchScreen(),
  //Text('nothing'),
  MonthlyBreakdown(uid: FirebaseAuth.instance.currentUser!.uid,),
];