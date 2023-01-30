/*
https://pub.dev/packages/badges
*/
//import 'package:flutter/src/material/badge.dart' as badge;
//import 'package:badges/src/badge.dart' as badge;
import 'package:badges/badges.dart' as badges;
import 'package:devkitflutter/ui/reusable/global_widget.dart';
import 'package:flutter/material.dart';

class Badges9Page extends StatefulWidget {
  @override
  _Badges9PageState createState() => _Badges9PageState();
}

class _Badges9PageState extends State<Badges9Page> {
  // initialize global widget
  final _globalWidget = GlobalWidget();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _globalWidget.globalAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: _globalWidget.createDetailWidget(
                  title: 'Badges 9 - With Border',
                  desc: 'This is the example of badges with border'
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: 0, end: 2),
                elevation: 0,
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.red,
                borderSide: BorderSide(color: Colors.black),
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: -5, end: -5),
                shape: badges.BadgeShape.square,
                badgeColor: Colors.blue,
                badgeContent: SizedBox(
                  height: 5,
                  width: 5,
                ),
                elevation: 0,
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 3,
                ),
                child: Icon(
                  Icons.games_outlined,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
