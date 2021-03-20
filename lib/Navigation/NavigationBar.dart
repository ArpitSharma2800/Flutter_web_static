import 'package:flutter/material.dart';
import 'package:staticwebpage/Navigation/src/Name.dart';
import 'package:staticwebpage/Navigation/src/NavBar.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 100,
          color: Color(0xff333951),
          child: Stack(
            children: [
              Name(),
              Align(alignment: Alignment.center, child: NavBar())
            ],
          ),
        ),
      ),
    );
  }
}
