import 'package:flutter/material.dart';

class NewFollowButton extends StatelessWidget {
  final Function()? function;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final Color textColor;
  const NewFollowButton(
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