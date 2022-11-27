import 'package:flutter/material.dart';
import 'package:mymuse/main.dart';
import 'package:mymuse/screens/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mymuse/follow_button.dart';
import 'package:mymuse/utils/utils.dart';
import 'package:provider/provider.dart';

import '../presentation/widgets/audio_player_buttons.dart';
import '../presentation/widgets/diff_follow_button.dart';
import '../providers/user_provider.dart';
import '../resources/auth_methods.dart';
import '../responsive/mobile_screen_layout.dart';

// ignore_for_file: file_names

class MonthlyBreakdown extends StatefulWidget {
  final String uid;
  const MonthlyBreakdown({Key? key, required this.uid}) : super(key: key);

  @override
  _MonthlyBreakdownState createState() => _MonthlyBreakdownState();
}

// ignore: camel_case_types, use_key_in_widget_constructors
class _MonthlyBreakdownState extends State<MonthlyBreakdown> {
  var userData = {};
  int postLen = 0;
  int followers = 0;
  int following = 0;
  bool isFollowing = false;
  bool isLoading = false;


  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.uid)
          .get();

      // get post length

      var postSnap = await FirebaseFirestore.instance
          .collection('muses')
          .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
      postLen = postSnap.docs.length;
      userData = userSnap.data()!;
      followers = userSnap.data()!['followers'].length;
      following = userSnap.data()!['following'].length;
      isFollowing = userSnap.data()!['followers'].contains(FirebaseAuth.instance.currentUser!.uid);

      setState(() {});
    } catch (e) {
      showSnackBar(e.toString(), context);
    }
    setState(() {
      isLoading = false;
    });
  }

  TextEditingController textarea = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;
  //signout function
  signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? 
    const Center(child: CircularProgressIndicator(),) : Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              SingleChildScrollView(
                  child: Row(
                children: [
                  SingleChildScrollView(
                    child: Row(children: [
                      Padding(
                    padding: const EdgeInsets.fromLTRB(0, 35, 80, 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MobileScreenLayout()));
                      },
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: 28,
                        width: 14,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/BackArrow.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      
                    ),
                    
                  ),
                      // Padding(
                      //   padding: const EdgeInsets.fromLTRB(137, 50, 0, 20),
                      //   child: Container(
                      //     height: 80,
                      //     width: 115,
                      //     decoration: const BoxDecoration(
                      //       image: DecorationImage(
                      //         image: AssetImage('assets/LogoLarge.png'),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 45, 10, 10),
                        child: Container(
                          width: 109,
                          height: 45.0,
                          // decoration: BoxDecoration(
                          //   color: const Color.fromARGB(255, 42, 42, 42),
                          //   border: Border.all(
                          //     color: const Color.fromARGB(255, 180, 179, 179),
                          //   ),
                          //   borderRadius: BorderRadius.circular(100),
                          // ),
                          // child: OutlinedButton(
                          //   child: const Text(
                          //     'Edit Profile',
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       fontSize: 12.0,
                          //       fontFamily: 'Gotham',
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          //   onPressed: () {
                          //     // Navigator.push(
                          //     //     context,
                          //     //     MaterialPageRoute(
                          //     //         builder: (context) =>
                          //     //             const EditProfile()));
                          //   },
                          // ),
                        ),
                      ),
                    ]),
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: Padding(
                    //height: 150,
                    padding: const EdgeInsets.fromLTRB(2, 5, 0, 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgyC_srTtkjeTIZQKWZ2ryiGnPq3jT8ey7Cw&usqp=CAU',
                        userData['photoUrl'],
                      ),
                      radius: 85,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1),
                child: Text(
                  //"Amy Smith",
                  userData['username'],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 23.0,
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              // Text(
              //   //user.username,
              //   //userData['username'],
              //   "@amy.smith123",
              //   textAlign: TextAlign.left,
              //   style: TextStyle(
              //     fontSize: 15.0,
              //     fontFamily: 'Gotham',
              //     color: Color.fromARGB(255, 180, 179, 179),
              //   ),
              // ),

              const SizedBox(
                height: 12,
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatColumn(postLen, "muses"),
                  buildStatColumnEmpty(0, "       "),
                  buildStatColumn(followers, "followers"),
                  buildStatColumnEmpty(0, "       "),
                  buildStatColumn(following, "following"),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // FollowButton(backgroundColor: Colors.black45, borderColor: Colors.grey, text: 'Edit Profile', textColor: Colors.white,
                  // function: (){},),

                  FirebaseAuth.instance.currentUser!.uid == widget.uid ?

                  NewFollowButton(
                    backgroundColor: Color.fromARGB(255, 42, 42, 42),
                    borderColor: Color.fromARGB(255, 180, 179, 179),
                    text: "Edit Profile",
                    textColor: Colors.white,
                    function: () {},
                  ): isFollowing? 
                                    NewFollowButton(
                    backgroundColor: Colors.white,
                    borderColor: Color.fromARGB(255, 180, 179, 179),
                    text: "Unfollow",
                    textColor: Colors.black87,
                    function: () {},
                  ):                   NewFollowButton(
                    backgroundColor: Colors.deepPurpleAccent,
                    borderColor: Colors.deepPurpleAccent,
                    text: "Follow",
                    textColor: Colors.white,
                    function: () {},
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 10),
                child: Container(
                  width: 277.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 42, 42, 42),
                    border: Border.all(
                      color: Color.fromARGB(255, 180, 179, 179),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: OutlinedButton(
                    child: const Text(
                      'View Monthly Breakdown',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => addFriends()));
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Container(
                width: 355.0,
                height: 230.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.3,
                      color: const Color.fromARGB(255, 180, 179, 179)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 18, 120, 10),
                      child:
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                            Text(
                              "MyMuse.............",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 27.0,
                                fontFamily: 'Gotham',
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 42, 42, 42),
                        )
                      ],
                    ),
                    Column(
                      children: const [AudioPlayerButtons()],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(0, 25, 120, 0),
                    //   child:
                    //       Column(crossAxisAlignment: CrossAxisAlignment.start,
                    //           // mainAxisAlignment: MainAxisAlignment.center,
                    //           children: const [
                    //         Text(
                    //           "Most Mused Song",
                    //           textAlign: TextAlign.left,
                    //           style: TextStyle(
                    //             fontSize: 20.0,
                    //             fontFamily: 'Gotham',
                    //             color: Color.fromARGB(255, 255, 255, 255),
                    //           ),
                    //         ),
                    //       ]),
                    // ),
                    // Row(
                    //   children: [
                    //     Container(
                    //         color: const Color.fromARGB(255, 42, 42, 42),
                    //         margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    //         child: InkWell(
                    //             splashColor:
                    //                 const Color.fromARGB(255, 42, 42, 42),
                    //             child: Row(
                    //               children: [
                    //                 Container(
                    //                     width: 337,
                    //                     height: 80,
                    //                     decoration: const BoxDecoration(
                    //                       image: DecorationImage(
                    //                         alignment: Alignment(-.95, 0),
                    //                         image: AssetImage(
                    //                             'assets/FakeAlbum.png'),
                    //                         scale: 0.9,
                    //                       ),
                    //                     ),
                    //                     child: Row(
                    //                       children: [
                    //                         Column(children: const [
                    //                           Padding(
                    //                               padding: EdgeInsets.fromLTRB(
                    //                                   70, 22, 0, 0),
                    //                               child: SizedBox(
                    //                                 height: 20,
                    //                                 width: 211,
                    //                                 child: Text(
                    //                                   "Die Hard",
                    //                                   textAlign: TextAlign.left,
                    //                                   style: TextStyle(
                    //                                     fontSize: 17.0,
                    //                                     fontFamily: 'Gotham',
                    //                                     color: Colors.white,
                    //                                   ),
                    //                                 ),
                    //                               )),
                    //                           Padding(
                    //                             padding: EdgeInsets.fromLTRB(
                    //                                 40, 0, 0, 10),
                    //                             child: SizedBox(
                    //                                 height: 12,
                    //                                 width: 175,
                    //                                 child: Text(
                    //                                   "Kendrick Lamar",
                    //                                   textAlign: TextAlign.left,
                    //                                   style: TextStyle(
                    //                                     fontSize: 10.0,
                    //                                     fontFamily: 'Gotham',
                    //                                     color: Color.fromARGB(
                    //                                         255, 180, 179, 179),
                    //                                   ),
                    //                                 )),
                    //                           ),
                    //                         ]),
                    //                       ],
                    //                     )),
                    //               ],
                    //             )))
                    //   ],
                    // ),
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 15, 22, 20),
                child: Container(
                  width: 150.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent[400],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: OutlinedButton(
                    child: const Text(
                      'Log out',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      signOut();
                      /*
                      // CHANGE USER FLOW HERE
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addFriends()));*/
                    },
                  ),
                ),
              ),
            ]))));
  }

  Column buildStatColumn(int num, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          num.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 1.5),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }

  Column buildStatColumnEmpty(int num, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Text(
        //   num.toString(),
        //   style: const TextStyle(
        //     fontSize: 22,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
