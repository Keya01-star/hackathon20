import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/screens/authenticate/login_screen.dart';
import 'package:hackathon/screens/authenticate/registration_screen.dart';
import 'package:hackathon/screens/wrapper.dart';
import 'package:hackathon/services/auth.dart';
import 'package:hackathon/temp.dart';
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
        title: 'Flutter Demo',
        home: Wrapper(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            //color: Colors.black,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg1.jpg"),
                //fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                bottom: 100,
                left: 50,
                child: ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.white,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "OpenSans",
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 200,
                left: 50,
                child: ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => RegistrationScreen()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.orange[200],
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "OpenSans",
                      ),
                    ),
                  ),
                ),
              )
            ])));
  }
}
