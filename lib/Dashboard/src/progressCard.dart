import 'package:flutter/material.dart';

class ProjectProgressCard extends StatefulWidget {
  final Color color;
  final Color progressIndicatorColor;
  final String projectName;
  final String percentComplete;
  final IconData icon;
  ProjectProgressCard({
    this.color,
    this.progressIndicatorColor,
    this.percentComplete,
    this.projectName,
    this.icon,
  });

  @override
  _ProjectProgressCardState createState() => _ProjectProgressCardState();
}

class _ProjectProgressCardState extends State<ProjectProgressCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          print(hovered);
          hovered = true;
        });
      },
      onExit: (value) {
        print(hovered);
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        height: hovered ? 160.0 : 155.0,
        width: hovered ? 200.0 : 195.0,
        decoration: BoxDecoration(
            color: hovered ? widget.color : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              ),
            ]),
      ),
    );
  }
}
