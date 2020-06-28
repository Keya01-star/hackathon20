import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'paintingdetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: Paintings(),
            );
          },
        );
      },
    );
  }
}

class Paintings extends StatefulWidget {
  Paintings({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PaintingsState createState() => _PaintingsState();
}

class _PaintingsState extends State<Paintings> {
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
                            Navigator.push(context, SizeRoute(page: Second()));
                          },
                          child: _buildFruitCard(
                              "Claude Monet",
                              "assets/Claude_Monet.jpg",
                              "₹12000",
                              0xff424242,
                              0XffFAF0DA),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, SizeRoute(page: Johannes()));
                          },
                          child: _buildFruitCard(
                              "Johannes Vermeer",
                              "assets/Johannes_Vermeer.jpg",
                              "₹13000",
                              0xff000000,
                              0XffE0E8CF),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: James()));
                          },
                          child: _buildFruitCard(
                              "James Abbott McNeill Whistler",
                              "assets/James_Abbott_McNeill_Whistler.jpg",
                              "₹15000",
                              0xff424242,
                              0XffF9EFB0),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Pablo()));
                          },
                          child: _buildFruitCard(
                              "Pablo Picasso",
                              "assets/Pablo_Picasso.png",
                              "₹20000",
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
                                    "Life is ",
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
                                      child: Text(
                                        "PAINTINGS",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'OpenSans',
                                            fontSize:
                                                1.7 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Paint your dreams",
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
                            Navigator.push(
                                context, SizeRoute(page: Monalisa()));
                          },
                          child: _buildFruitCard(
                              "Monalisa",
                              "assets/monalisa.jpg",
                              "₹12000",
                              0xff000000,
                              0XffFDDCC1),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Pieter()));
                          },
                          child: _buildFruitCard(
                              "Pieter Bruegel the Elder",
                              "assets/Pieter_Bruegel_the_Elder.jpg",
                              "₹14500",
                              0xff424242,
                              0XffFDDCC1),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Vincent()));
                          },
                          child: _buildFruitCard(
                              "Vincent van Gogh",
                              "assets/Vincent_van_Gogh.jpg",
                              "₹15500",
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

  _buildFruitCard(
      String name, String asset, String rate, int color, int color2) {
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
