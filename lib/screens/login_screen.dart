import 'package:flash_chat/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset('images/logo.png'),
                height: 150.0,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) => {
                // user input
              },
              decoration: kTextFieldDecoration.copyWith(hintText: "E-Mail"),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              onChanged: (value) => {
                // user input
              },
              decoration: kTextFieldDecoration.copyWith(hintText: "Password"),
            ),
            SizedBox(
              height: 32.0,
            ),
            RoundedButton(
                buttonColor: Colors.lightBlueAccent,
                onPressed: () => {
                      //   Log In functionality implementation
                    },
                buttonText: "Log In")
          ],
        ),
      ),
    );
  }
}
