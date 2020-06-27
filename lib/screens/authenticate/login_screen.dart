import 'package:hackathon/screens/authenticate/RoundButton.dart';
import 'package:hackathon/screens/authenticate/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathon/screens/authenticate/registration_screen.dart';
import 'package:hackathon/services/auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String emaill;
  String password;
  String error = '';
  bool showSpinner = false;
  final Authservice _auth = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
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
                    emaill = value;
                    //Do something with the user input.
                  },
                  decoration: kInputTextFieldDecoration.copyWith(
                    hintText: 'Enter your email',
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
                    password = value;
                    //Do something with the user input.
                  },
                  decoration: kInputTextFieldDecoration.copyWith(
                    hintText: 'Enter your Password',
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                RoundButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final user =
                          await _auth.signInWithEmail(emaill, password);
                      // print(emaill);
                      if (user == null) {
                        //Navigator.pushNamed(context, ChatScreen.id);
                        //print('cant sign in');
                        setState(() {
                          error =
                              'Cannot sign in with given email and password';
                        });
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  title: 'Log In',
                ),
                SizedBox(
                  height: 8.0,
                ),
                RoundButton(
                  color: Colors.lightBlueAccent,
                  title: 'Register',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
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
