import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/services/database.dart';

import 'package:hackathon/temp.dart';
import 'package:hackathon/user/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return MyHomePage();
    } else {
      return StreamProvider<QuerySnapshot>.value(
          value: DatabaseService().users,
          child: Temp(
            id: user.uid,
          ));
    }
  }
}
