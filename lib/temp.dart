import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Sculpture.dart';
import 'package:hackathon/magazine.dart';
import 'package:hackathon/services/auth.dart';
import 'package:hackathon/services/database.dart';
import 'package:provider/provider.dart';
import 'paintings.dart';
import 'SizeConfig.dart';
import 'configuration.dart';

class Temp extends StatelessWidget {
  String id;
  Temp({this.id});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return StreamProvider<QuerySnapshot>.value(
              value: DatabaseService().users,
              child: Container(
                child: MyMainPage(
                  uid: id,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class MyMainPage extends StatefulWidget {
  // MyMainPage({Key key, this.title}) : super(key: key);

  //final String title;
  String uid;
  MyMainPage({this.uid});

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> with TickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;
  TabController tabController;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
    //super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final users = Provider.of<QuerySnapshot>(context);
    String name;
    for (var doc in users.documents) {
      if (doc.data['uid'] == widget.uid) {
        name = doc.data['name'];
      }
    }
    print('Name::' + name);
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          menu(context, name),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context, String name) {
    final Authservice _auth = Authservice();
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                            Text(
                              'Active Status',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 80),
                    Column(
                      children: drawerItems
                          .map((element) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      element['icon'],
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(element['title'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 2,
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            _auth.signOut();
                          },
                          child: Text(
                            'Log out',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget dashboard(context) {
    return AnimatedPositioned(
        duration: duration,
        top: 0,
        bottom: 0,
        left: isCollapsed ? 0 : 0.6 * screenWidth,
        right: isCollapsed ? 0 : -0.6 * screenWidth,
        child: ScaleTransition(
            scale: _scaleAnimation,
            child: Material(
              animationDuration: duration,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              elevation: 8,
              color: Colors.brown,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 50.0),
                      child: Row(
                        children: <Widget>[
                          InkWell(
                            child: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 6 * SizeConfig.imageSizeMultiplier,
                            ),
                            onTap: () {
                              setState(() {
                                if (isCollapsed)
                                  _controller.forward();
                                else
                                  _controller.reverse();

                                isCollapsed = !isCollapsed;
                              });
                            },
                          ),
                          Spacer(),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                            size: 6 * SizeConfig.imageSizeMultiplier,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5 * SizeConfig.heightMultiplier,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Search here",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.4 * SizeConfig.textMultiplier,
                                    fontFamily: 'OpenSans'),
                              ),
                              Spacer(),
                              Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 6 * SizeConfig.imageSizeMultiplier,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5 * SizeConfig.heightMultiplier,
                    ),
                    TabBar(
                        controller: tabController,
                        indicatorColor: Colors.black,
                        indicatorWeight: 3.0,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              "Painting",
                              style: TextStyle(
                                  fontSize: 2.5 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans'),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Magazine",
                              style: TextStyle(
                                  fontSize: 2.5 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans'),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Sculpture",
                              style: TextStyle(
                                  fontSize: 2.5 * SizeConfig.textMultiplier,
                                  fontFamily: 'OpenSans'),
                            ),
                          ),
                        ]),
                    Expanded(
                      child: Container(
                        child: TabBarView(
                            controller: tabController,
                            children: <Widget>[
                              Paintings(),
                              Magazine(),
                              Sculpture(),
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
