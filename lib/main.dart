import 'package:flutter/material.dart';
import 'package:hackathon/screens/wrapper.dart';
import 'package:hackathon/services/auth.dart';
import 'package:hackathon/user/user.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Authservice().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
