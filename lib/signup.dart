import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignupPage extends StatefulWidget{
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool _success;
  late String _userEmail;

  void _register() async{
    final User user = (
    await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text)
    ).user;

    if(user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = false;
      });
    }
  }



  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15,110,0,0),
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold
                      )
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 30),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0,),

                SizedBox(height: 40,),
                Container(
                  height:40,
                  child: Material(
                    borderRadius: BorderRadius.circular(28),
                    shadowColor: Colors.purpleAccent,
                    color: Colors.black,
                    elevation: 7,
                    child: GestureDetector(
                        onTap: () async{
                          _register();
                        },
                        child: Center(
                            child: Text(
                                'SIGNUP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Monsterrat'
                                )
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                            'GO BACK',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontFamily: 'Monsterrat',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                            )
                        ),
                      )
                    ]
                )
              ],
            ),
          )

        ]
      )
    );
  }
}