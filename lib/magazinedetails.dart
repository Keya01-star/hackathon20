import 'package:flutter/material.dart';
import 'package:flutter_grocery_shopping/SizeConfig.dart';

void main() => runApp(MyAppnew1());

class MyAppnew1 extends StatelessWidget {
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
              home: Fourth(),
            );
          },
        );
      },
    );
  }
}

class Fourth extends StatefulWidget {
  Fourth({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FourthState createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
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
                  "assets/frontline.jpg",
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
                          "Frontline",
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
                          '''Frontline gives a prominent place to various issues of development and hindrances in the Indian states. Apart from topics of politics and political economy, it also covers a wide range of topics including Arts, books, cinema, Science and English language.''',
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
                              "₹200",
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

class Operation extends StatefulWidget {
  Operation({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OperationState createState() => _OperationState();
}

class _OperationState extends State<Operation> {
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
                  "assets/operation.jpg",
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
                          "Operation",
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
                          '''Operations was Multi-Man Publishing's house organ for articles and discussion about its wargaming products, published from 1991 to 2010.''',
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
                              "₹180",
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

class Tinkle extends StatefulWidget {
  Tinkle({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TinkleState createState() => _TinkleState();
}

class _TinkleState extends State<Tinkle> {
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
                  "assets/tinkle.jpg",
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
                          "Tinkle",
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
                          ''' The magazine contains comics, stories, puzzles, quizzes, contests and other features targeted at school children, although its readership includes many adults as well. ''',
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
                              "₹150",
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

class Clairon extends StatefulWidget {
  Clairon({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ClaironState createState() => _ClaironState();
}

class _ClaironState extends State<Clairon> {
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
                  "assets/clairon.jpg",
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
                          "Clairon",
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
                          '''Clarion is a literary magazine founded at Boston University in 1998.''',
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
                              "₹150",
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

class Parnassus extends StatefulWidget {
  Parnassus({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ParnassusState createState() => _ParnassusState();
}

class _ParnassusState extends State<Parnassus> {
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
                  "assets/parnassus.jpg",
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
                          "Parnassus",
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
                          '''The magazine published special theme issues on subjects including women and poetry, the long poem, words and music, autobiography, multiculturalism, and poetry and movies.''',
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
                              "₹120",
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

class Hogan extends StatefulWidget {
  Hogan({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HoganState createState() => _HoganState();
}

class _HoganState extends State<Hogan> {
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
                  "assets/hogan.jpg",
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
                          "Hogan's Alley",
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
                          '''Hogan's Alley, a publication devoted to comic art, is subtitled the magazine of the cartoon arts. ''',
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
                              "₹120",
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

class Cadence extends StatefulWidget {
  Cadence({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CadenceState createState() => _CadenceState();
}

class _CadenceState extends State<Cadence> {
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
                  "assets/cadence.jpg",
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
                          "Cadence",
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
                          '''The Independent Journal of Creative Improvised Music is a quarterly review of jazz, blues and improvised music. The magazine covers a range of styles, from early jazz and blues to the avant-garde.  ''',
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
                              "₹110",
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
