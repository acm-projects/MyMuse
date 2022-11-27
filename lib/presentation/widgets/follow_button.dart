import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final Function()? function;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final Color textColor;
  const FollowButton(
      {Key? key,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.textColor,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(22, 0, 22, 10),
      child: TextButton(
        onPressed: function,
        child: Container(
          width: 277.0,
          height: 53.0,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14.0,
              fontFamily: 'Gotham',
              //color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}


              // Padding(
              //   padding: const EdgeInsets.fromLTRB(22, 0, 22, 10),
              //   child: Container(
              //     width: 277.0,
              //     height: 53.0,
              //     decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 42, 42, 42),
              //       border: Border.all(
              //         color: Color.fromARGB(255, 180, 179, 179),
              //       ),
              //       borderRadius: BorderRadius.circular(100),
              //     ),
              //     child: OutlinedButton(
              //       child: const Text(
              //         'View Monthly Breakdown',
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //           fontSize: 14.0,
              //           fontFamily: 'Gotham',
              //           color: Colors.white,
              //         ),
              //       ),
              //       onPressed: () {
              //         // Navigator.push(
              //         //     context,
              //         //     MaterialPageRoute(
              //         //         builder: (context) => addFriends()));
              //       },
              //     ),
              //   ),
              // ),