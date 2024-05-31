import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo.png'),
                  height: 60.0,
                ),
              ),
              Text(
                "Flash Chat",
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.lightBlueAccent,
              child: MaterialButton(
                onPressed: () => {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LoginScreen()),
                  // )
                  Navigator.pushNamed(context, LoginScreen.id),
                },
                child: Text("Log In"),
                minWidth: 320.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.lightBlueAccent,
              child: MaterialButton(
                onPressed: () => {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => RegistrationScreen()),
                  // )
                  Navigator.pushNamed(context, RegistrationScreen.id),
                },
                child: Text("Sign Up"),
                minWidth: 320.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
