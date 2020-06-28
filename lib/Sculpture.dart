import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SizeConfig.dart';
//import 'package:flutter_grocery_shopping/paintingdetails.dart';
import 'sculpturedetails.dart';

void main() => runApp(MyAppnew());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Sculpture(),
    );
  }
}

class Sculpture extends StatefulWidget {
  Sculpture({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SculptureState createState() => _SculptureState();
}

class _SculptureState extends State<Sculpture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Third()));
                          },
                          child: _buildFruitCard("Buddha", "assets/buddha.jpeg",
                              "₹9000", 0xff424242, 0XffFAF0DA),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Fonseca()));
                          },
                          child: _buildFruitCard(
                              "Fonseca Bust",
                              "assets/fonseca-bust.jpg",
                              "₹10000",
                              0xff000000,
                              0XffE0E8CF),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Women()));
                          },
                          child: _buildFruitCard(
                              "Women Sculpture",
                              "assets/women-figure.jpg",
                              "₹5000",
                              0xff424242,
                              0XffF9EFB0),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Man()));
                          },
                          child: _buildFruitCard(
                              "Man with wings",
                              "assets/man-with-wings.jpg",
                              "₹15000",
                              0xff000000,
                              0XffF9EFB0),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 42.5 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xffECEDF1)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Sculpture is ",
                                    style: TextStyle(
                                        fontFamily: 'OpenSans-Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize:
                                            2.0 * SizeConfig.textMultiplier),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "ART",
                                    style: TextStyle(
                                        fontFamily: 'OpenSans-Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize:
                                            2.5 * SizeConfig.textMultiplier),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: new InkWell(
                                        child: Text(
                                          "Want to know more? Click here",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'OpenSans',
                                              fontSize: 1.7 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () => launch(
                                            'https://www.timeout.com/newyork/art/top-famous-sculptures-of-all-time'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Of Intelligence",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OpenSans-Bold',
                                        fontSize:
                                            2.0 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Wing()));
                          },
                          child: _buildFruitCard(
                              "Winged Victory",
                              "assets/winged-victory.png",
                              "₹8000",
                              0xff000000,
                              0XffFDDCC1),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Julius()));
                          },
                          child: _buildFruitCard(
                              "Julius Caesar",
                              "assets/julius-caesar.jpeg",
                              "₹12000",
                              0xff424242,
                              0XffFDDCC1),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Zeus()));
                          },
                          child: _buildFruitCard(
                              "Zeus and Ganymede",
                              "assets/Zeus-and-Ganymede-Terra-Cotta-Statue.jpg",
                              "₹10000",
                              0xff000000,
                              0XffF8C6CA),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_buildFruitCard(String name, String asset, String rate, int color, int color2) {
  return Container(
    width: 42.5 * SizeConfig.widthMultiplier,
    decoration: BoxDecoration(
      color: Color(color),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.topRight,
          child: Container(
            decoration: BoxDecoration(
                color: Color(color2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Center(
          child: Image.asset(
            asset,
            fit: BoxFit.contain,
            height: 30 * SizeConfig.imageSizeMultiplier,
            width: 30 * SizeConfig.imageSizeMultiplier,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: Text(
            name,
            style: TextStyle(
                fontFamily: 'OpenSans-Bold',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 2.5 * SizeConfig.textMultiplier),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    rate,
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 2.5 * SizeConfig.textMultiplier),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "View details",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 1.3 * SizeConfig.textMultiplier),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2 * SizeConfig.heightMultiplier,
        )
      ],
    ),
  );
}

class SizeRoute extends PageRouteBuilder {
  final Widget page;
  SizeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Align(
            child: SizeTransition(
              sizeFactor: animation,
              child: child,
            ),
          ),
        );
}
