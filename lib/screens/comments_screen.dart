import 'package:flutter/material.dart';
import 'package:mymuse/responsive/mobile_screen_layout.dart';
import 'package:mymuse/screens/homePage.dart';

class comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              SingleChildScrollView(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 90, 20),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                    child: Container(
                      height: 60,
                      width: 95,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/LogoSmall.png'),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Column(children: [
                Row(
                  children: [
                    Container(
                        color: const Color.fromARGB(255, 42, 42, 42),
                        margin: const EdgeInsets.fromLTRB(22.5, 10, 0, 0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          splashColor: const Color.fromARGB(255, 42, 42, 42),
                          child: Container(
                            width: 344,
                            height: 49,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment(-.95, 0),
                                image: AssetImage(
                                    'assets/faiza.png'),
                              ),
                            ),
                            child: Column(children: const [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                                  child: SizedBox(
                                    height: 20,
                                    width: 300,
                                    child: Text(
                                      "faiza_rahman",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: 'Gotham',
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.fromLTRB(65, 2, 0, 1),
                                child: SizedBox(
                                    height: 14,
                                    width: 300,
                                    child: Text(
                                      "2 hours ago",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Gotham',
                                        color:
                                            Color.fromARGB(255, 125, 125, 125),
                                      ),
                                    )),
                              ),
                            ]),
                          ),
                          onTap: () {
                            /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => personalProfile()));*/
                          },
                        ))
                  ],
                ),

                const SizedBox(height: 14),

                Row(
                  children: [
                    Card(
                        margin: const EdgeInsets.fromLTRB(22.5, 0, 0, 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          splashColor: Colors.white,
                          child: Container(
                            width: 344,
                            height: 63,
                            // decoration: const BoxDecoration(
                            //   image: DecorationImage(
                            //     alignment: Alignment(-.95, 0),
                            //     image: AssetImage('assets/FakeAlbum.png'),
                            //   ),
                            // ),
                            decoration: BoxDecoration(
                              //border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(500),
                              image: DecorationImage(
                               alignment: Alignment(-.95, 0),

                                image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/9/9f/Midnights_-_Taylor_Swift.png'),
                               // fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(children: const [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(65, 12, 0, 0),
                                  child: SizedBox(
                                    height: 20,
                                    width: 300,
                                    child: Text(
                                      "Maroon",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: 'Gotham',
                                        color: Colors.black,
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.fromLTRB(65, 2, 0, 1),
                                child: SizedBox(
                                    height: 14,
                                    width: 300,
                                    child: Text(
                                      "Taylor Swift",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Gotham',
                                        color:
                                            Color.fromARGB(255, 125, 125, 125),
                                      ),
                                    )),
                              ),
                            ]),
                          ),
                          onTap: () {},
                        ))
                  ],
                ),
              ]),
              const Center(
                child: Divider(
                  indent: 18,
                  endIndent: 18,
                  color: Color.fromARGB(255, 180, 179, 179),
                  thickness: .8,
                ),
              ),
              Row(
                children: [
                  Container(
                      color: const Color.fromARGB(255, 42, 42, 42),
                      margin: const EdgeInsets.fromLTRB(22.5, 10, 0, 0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: const Color.fromARGB(255, 42, 42, 42),
                        child: Container(
                          width: 360.2,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment(-.95, -.65),
                              image: AssetImage('assets/max.png'),
                            ),
                          ),
                          child: Column(children: [
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(65, 0, 0, 0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 190,
                                      child: Text(
                                        "iammaxlichter",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                                const Text(
                                  "1 min",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Gotham',
                                    color: Color.fromARGB(255, 175, 175, 175),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: TextButton(
                                    onPressed: () {
                                      /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homePage()));*/
                                    },
                                    child: const Text(
                                      "Reply",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Gotham',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(65, 0, 20, 1),
                              child: SizedBox(
                                  height: 45,
                                  width: 350,
                                  child: Text(
                                    "i love this song! ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Gotham',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                        onTap: () {
                          /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => personalProfile()));*/
                        },
                      ))
                ],
              ),




              
              Row(
                children: [
                  Container(
                      color: const Color.fromARGB(255, 42, 42, 42),
                      margin: const EdgeInsets.fromLTRB(22.5, 10, 0, 0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: const Color.fromARGB(255, 42, 42, 42),
                        child: Container(
                          width: 360.2,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment(-.95, -.65),
                              image: AssetImage('assets/FakeFriendProfile.png'),
                            ),
                          ),
                          child: Column(children: [
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(65, 0, 0, 0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 190,
                                      child: Text(
                                        "manasivipat",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                                const Text(
                                  "1 min",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Gotham',
                                    color: Color.fromARGB(255, 175, 175, 175),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: TextButton(
                                    onPressed: () {
                                      /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homePage()));*/
                                    },
                                    child: const Text(
                                      "Reply",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Gotham',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(65, 0, 20, 1),
                              child: SizedBox(
                                  height: 45,
                                  width: 350,
                                  child: Text(
                                    "I don't know what t hdahi dwiha ihwd j w jod  jowt hdahi dwiha ihwd j w jod  jowt hdahi dwiha ihwd j w jod  jowt hdahi dwiha ihwd j w jod  jowt hdahi dwiha ihwd j w jod  jow ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Gotham',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                        onTap: () {
                          /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => personalProfile()));*/
                        },
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      color: const Color.fromARGB(255, 42, 42, 42),
                      margin: const EdgeInsets.fromLTRB(22.5, 10, 0, 0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: const Color.fromARGB(255, 42, 42, 42),
                        child: Container(
                          width: 360.2,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment(-.95, -.65),
                              image: AssetImage('assets/FakeFriendProfile.png'),
                            ),
                          ),
                          child: Column(children: [
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(65, 0, 0, 0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 190,
                                      child: Text(
                                        "John Jones",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Gotham',
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                                const Text(
                                  "1 min",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Gotham',
                                    color: Color.fromARGB(255, 175, 175, 175),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: TextButton(
                                    onPressed: () {
                                      /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homePage()));*/
                                    },
                                    child: const Text(
                                      "Reply",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Gotham',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(65, 0, 20, 1),
                              child: SizedBox(
                                  height: 45,
                                  width: 350,
                                  child: Text(
                                    "I don't knjowt hdahi dwiha ihwd j w jod  jowt hdahi dwiha ihwd j w jod  jowt hdahi dwiha ihwd j w jod  jow ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Gotham',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                        onTap: () {
                          /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => personalProfile()));*/
                        },
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      color: const Color.fromARGB(255, 42, 42, 42),
                      margin: const EdgeInsets.fromLTRB(60.5, 10, 0, 0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: const Color.fromARGB(255, 42, 42, 42),
                        child: Container(
                          width: 330.2,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment(-.95, -.65),
                              image: AssetImage('assets/FakeFriendProfile.png'),
                            ),
                          ),
                          
                        ),
                        onTap: () {
                          /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => personalProfile()));*/
                        },
                      ))
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                            child: Container(
                                width: 280.0,
                                height: 53.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.3,
                                      color: const Color.fromARGB(
                                          255, 180, 179, 179)),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextFormField(
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Gotham',
                                      color: Colors.white,
                                      decorationThickness: 0,
                                    ),
                                    decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(19, 0, 30, 0),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Gotham',
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      hintText: ('Post your comment here'),
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: TextButton(
                              onPressed: () {
                                /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homePage()));*/
                              },
                              child: const Text(
                                "Post",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'Gotham',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ]),
              )
            ],
          )),
        ));
  }
}