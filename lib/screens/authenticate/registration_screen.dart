import 'package:flutter/material.dart';
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
      backgroundColor: Colors.black,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Text('Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    )),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                    //style: kTextStyle,
                    style: TextStyle(color: Colors.white),
                    //textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                        labelText: 'email',
                        icon: Icon(
                          Icons.email,
                          color: Colors.orange[200],
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)))),
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  //style: kTextStyle,
                  //textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    name = value;
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                      labelText: 'Name',
                      icon: Icon(
                        Icons.person,
                        color: Colors.orange[200],
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  //style: kTextStyle,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  //textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.orange[200],
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 50.0,
                ),
                RaisedButton(
                  child: Text('Register'),
                  color: Colors.orange[200],
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
