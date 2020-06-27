import 'package:hackathon/screens/authenticate/RoundButton.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/screens/authenticate/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathon/services/auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  String name;
  String error = '';
  bool showSpinner = false;
  final Authservice _auth = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  style: kTextStyle,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                    //Do something with the user input.
                  },
                  decoration: kInputTextFieldDecoration.copyWith(
                    hintText: 'Enter Your Email',
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  style: kTextStyle,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    name = value;
                    //Do something with the user input.
                  },
                  decoration: kInputTextFieldDecoration.copyWith(
                    hintText: 'Enter Your Name',
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  style: kTextStyle,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  decoration: kInputTextFieldDecoration.copyWith(
                    hintText: 'Enter your Password',
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                RoundButton(
                  title: 'Register',
                  color: Colors.lightBlueAccent,
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser =
                          await _auth.regInWithEmail(email, password);
                      if (newUser == null) {
                        //Navigator.pushNamed(context, ChatScreen.id);
                        //print('cant register');
                        setState(() {
                          error =
                              'Cannot register with given email and password';
                        });
                      } else {
                        Navigator.pop(context);
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
                SizedBox(height: 8.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
