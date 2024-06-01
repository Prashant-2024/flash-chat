import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.buttonColor,
      required this.onPressed,
      required this.buttonText});

  final Color buttonColor;
  final void Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(25.0),
        color: buttonColor,
        child: MaterialButton(
          onPressed: onPressed,
          child: Text("$buttonText"),
          minWidth: 320.0,
        ),
      ),
    );
  }
}
