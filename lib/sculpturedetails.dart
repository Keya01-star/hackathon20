import 'package:flutter/material.dart';
import 'package:flutter_grocery_shopping/SizeConfig.dart';

void main() => runApp(MyAppnew());

class MyAppnew extends StatelessWidget {
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
              home: Third(),
            );
          },
        );
      },
    );
  }
}

class Third extends StatefulWidget {
  Third({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BuddhaState createState() => _BuddhaState();
}

class _BuddhaState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xff000000)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/buddha.jpeg",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text(
                          "Buddha",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          '''The Buddha was a philosopher, mendicant, meditator, spiritual teacher, and religious leader who lived in Ancient India. ''',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "₹9000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans-Bold'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 1 * SizeConfig.widthMultiplier,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                2.5 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'OpenSans-Bold'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Fonseca extends StatefulWidget {
  Fonseca({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FonsecaState createState() => _FonsecaState();
}

class _FonsecaState extends State<Fonseca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xff000000)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/fonseca-bust.jpg",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text(
                          "Fonseca Bust",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          '''The Bust of Gabriele Fonseca is a sculptural portrait by the Italian artist Gian Lorenzo Bernini. Executed sometime between 1668 and 1674, the work is located in San Lorenzo in Lucina in Rome, Italy.''',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "₹10000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans-Bold'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 1 * SizeConfig.widthMultiplier,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                2.5 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'OpenSans-Bold'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Women extends StatefulWidget {
  Women({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WomenState createState() => _WomenState();
}

class _WomenState extends State<Women> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xff000000)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/women-figure.jpg",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text(
                          "Women Sculpture",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          ''' It is a women face sculpture near window. ''',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
           
                            left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "₹5000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans-Bold'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 1 * SizeConfig.widthMultiplier,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                2.5 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'OpenSans-Bold'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Man extends StatefulWidget {
  Man({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ManState createState() => _ManState();
}

class _ManState extends State<Man> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xff000000)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/man-with-wings.jpg",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text(
                          "Man with wings",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          '''The Angel of the North is a contemporary sculpture, designed by Antony Gormley, located in Gateshead, Tyne and Wear, England. ''',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "₹15000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans-Bold'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 1 * SizeConfig.widthMultiplier,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                2.5 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'OpenSans-Bold'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Wing extends StatefulWidget {
  Wing({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WingState createState() => _WingState();
}

class _WingState extends State<Wing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xff000000)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/winged-victory.png",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text(
                          "Winged Victory",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          '''The Winged Victory of Samothrace, also called the Nike of Samothrace, is a marble Hellenistic sculpture of Nike, that was created in about the 2nd century BC.''',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "₹8000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans-Bold'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 1 * SizeConfig.widthMultiplier,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                2.5 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'OpenSans-Bold'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Julius extends StatefulWidget {
  Julius({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _JuliusState createState() => _JuliusState();
}

class _JuliusState extends State<Julius> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xff000000)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/julius-caesar.jpeg",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text(
                          "Julius Caesar",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          '''Gaius Julius Caesar was a Roman general and statesman who played a critical role in the events that led to the demise of the Roman Republic and the rise of the Roman Empire. ''',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "₹12000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans-Bold'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 1 * SizeConfig.widthMultiplier,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                2.5 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'OpenSans-Bold'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Zeus extends StatefulWidget {
  Zeus({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ZeusState createState() => _ZeusState();
}

class _ZeusState extends State<Zeus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(color: Color(0xff000000)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/Zeus-and-Ganymede-Terra-Cotta-Statue.jpg",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,
                ),
              ),
              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.black,
                          ],
                          stops: [
                            0.0,
                            1.0
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text(
                          "Zeus and Ganymede",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          '''The Group of Zeus and Ganymede is a multi-figure Late Archaic Greek terracotta statue group, depicting Zeus carrying the boy Ganymede off to Mount Olympus ''',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3 * SizeConfig.textMultiplier,
                                      fontFamily: 'OpenSans'),
                                ),
                                SizedBox(
                                  width: 3 * SizeConfig.widthMultiplier,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5.0),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              3 * SizeConfig.textMultiplier,
                                          fontFamily: 'OpenSans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "₹10000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 3 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans-Bold'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[],
                        ),
                      ),
                      SizedBox(
                        height: 3 * SizeConfig.heightMultiplier,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 1 * SizeConfig.widthMultiplier,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                2.5 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'OpenSans-Bold'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
