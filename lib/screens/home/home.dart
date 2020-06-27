import 'package:flutter/material.dart';
import 'package:hackathon/services/auth.dart';

class Home extends StatelessWidget {
  final Authservice _auth = Authservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Logout'))
        ],
      ),
    );
  }
}
