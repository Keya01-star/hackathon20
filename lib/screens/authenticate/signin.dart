import 'package:flutter/material.dart';
import 'package:hackathon/services/auth.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final Authservice _auth = Authservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign In'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50),
        child: RaisedButton(
          child: Text('Sign in'),
          onPressed: () async {
            dynamic result = await _auth.signInanon();
            if (result != null) {
              print('Sucess');
              print(result.uid);
            } else {
              print('error');
            }
          },
        ),
      ),
    );
  }
}
