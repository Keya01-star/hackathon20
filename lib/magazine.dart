import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SizeConfig.dart';
import 'magazinedetails.dart';

void main() => runApp(MyAppnew1());

class MyAppnew1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Magazine(),
    );
  }
}

class Magazine extends StatefulWidget {
  Magazine({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MagazineState createState() => _MagazineState();
}

class _MagazineState extends State<Magazine> {
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
                            Navigator.push(context, SizeRoute(page: Fourth()));
                          },
                          child: _buildFruitCard(
                              "Frontline",
                              "assets/frontline.jpg",
                              "₹200",
                              0xff424242,
                              0XffFAF0DA),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, SizeRoute(page: Operation()));
                          },
                          child: _buildFruitCard(
                              "Operation",
                              "assets/operation.jpg",
                              "₹180",
                              0xff000000,
                              0XffE0E8CF),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Tinkle()));
                          },
                          child: _buildFruitCard("Tinkle", "assets/tinkle.jpg",
                              "₹150", 0xff424242, 0XffF9EFB0),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Clairon()));
                          },
                          child: _buildFruitCard(
                              "Clairon",
                              "assets/clairon.jpg",
                              "₹150",
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
                                    "It is a ",
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
                                    "GIFT",
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
                                            'https://en.wikipedia.org/wiki/List_of_magazines_in_India'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "You can open again and again.",
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
                                context, SizeRoute(page: Parnassus()));
                          },
                          child: _buildFruitCard(
                              "Parnassus",
                              "assets/parnassus.jpg",
                              "₹120",
                              0xff000000,
                              0XffFDDCC1),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Hogan()));
                          },
                          child: _buildFruitCard(
                              "Hogan's Alley",
                              "assets/hogan.jpg",
                              "₹120",
                              0xff424242,
                              0XffFDDCC1),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, SizeRoute(page: Cadence()));
                          },
                          child: _buildFruitCard(
                              "Cadence",
                              "assets/cadence.jpg",
                              "₹110",
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
