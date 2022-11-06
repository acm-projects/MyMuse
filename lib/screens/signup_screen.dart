import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mymuse/resources/auth_methods.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/utils.dart';
import 'onboard_screen.dart';

class createAccount extends StatefulWidget {
  const createAccount({Key? key}) : super(key: key);

  @override
  _createAccountState createState() => _createAccountState();

  //State<createAccount> createState() => _createAccountState();
}

class _createAccountState extends State<createAccount> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  //final TextEditingController _bioController = TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    //_bioController.dispose();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  void signUpUser() async {
    setState(() {
      _isLoading = true;
    });
      String res = await AuthMethods().signUpUser(
        email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text,
        file: _image!,);

    setState(() {
      _isLoading = false;
    });

      if(res != 'success') {
        showSnackBar(res, context);
      } else {
        // Show nothing
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 42, 42),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 89, 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                              },
                              child: Container(
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
                          Center(
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
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        _image!= null ? CircleAvatar(
                            radius: 60,
                            backgroundImage: MemoryImage(_image!),
                          )
                        : const CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                                'https://groovesharks.org/assets/images/default_avatar.jpg')
                          ),
                        Container(
                          height: 60,
                          width: 95,
                        ),
                        Positioned(
                          bottom: -10,
                          left: 80,
                      child: IconButton(
                          onPressed: selectImage,
                          icon: const Icon(
                            Icons.add_a_photo,
                          ),
                        ),
                        ),
                    ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(43, 18, 258, 9),
                      child: Text(
                        "Username",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Gotham',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                          width: 346.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.3,
                                color: const Color.fromARGB(255, 180, 179, 179)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                            controller: _usernameController,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                                decorationThickness: 0,
                              ),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Gotham',
                                  color: Color.fromARGB(255, 180, 179, 179),
                                ),
                                hintText: ('Enter your Username'),
                              ))),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(43, 18, 258, 9),
                      child: Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Gotham',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                          width: 346.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.3,
                                color: const Color.fromARGB(255, 180, 179, 179)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                              controller: _passwordController,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                                decorationThickness: 0,
                              ),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Gotham',
                                  color: Color.fromARGB(255, 180, 179, 179),
                                ),
                                hintText: ('Enter your password'),
                              ),
                              obscureText: true)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(43, 5, 90, 8),
                      child: Text(
                        "password must contain 8+ characters and minimum one number",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 8.0,
                          fontFamily: 'Gotham',
                          color: Color.fromARGB(255, 180, 179, 179),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(43, 18, 184, 9),
                      child: Text(
                        "Confirm Password",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Gotham',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                          width: 346.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.3,
                                color: const Color.fromARGB(255, 180, 179, 179)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                                decorationThickness: 0,
                              ),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Gotham',
                                  color: Color.fromARGB(255, 180, 179, 179),
                                ),
                                hintText: ('Enter your password'),
                              ),
                              obscureText: true )),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(43, 18, 295, 9),
                      child: Text(
                        "Email",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Gotham',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                          width: 346.0,
                          height: 53.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.3,
                                color: const Color.fromARGB(255, 180, 179, 179)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                              controller: _emailController,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Gotham',
                                color: Colors.white,
                                decorationThickness: 0,
                              ),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Gotham',
                                  color: Color.fromARGB(255, 180, 179, 179),
                                ),
                                hintText: ('Enter your email'),
                              ))),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                      child: Divider(
                        indent: 27,
                        endIndent: 27,
                        color: Color.fromARGB(255, 180, 179, 179),
                        thickness: .8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 25, 22, 9),
                      child: Container(
                        width: 346.0,
                        height: 53.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 150, 52, 200),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: OutlinedButton(
                          child: _isLoading
                              ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ) : const Text(
                            'Create Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Gotham',
                              color: Colors.white,
                            ),
                          ),
                              onPressed: signUpUser,
                             // String res = await AuthMethods().signUpUser(email: _emailController.text, password: _passwordController.text, username: _usernameController.text, file: _image!,);
                             // print(res);
                          //},//onPressed: () async {;},
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
