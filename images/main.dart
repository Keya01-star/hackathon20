import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //primarySwatch: Colors.blue,

          ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/oldbackground.gif"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                bottom: 25,
                child: ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.white,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Color(0xFF56320E),
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
                bottom: 80,
                child: ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Color(0xFF56320E),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        color: Colors.white,
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
