import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String id = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                      //   Register functionality implementation
                    },
                buttonText: "Register")
          ],
        ),
      ),
    );
  }
}
