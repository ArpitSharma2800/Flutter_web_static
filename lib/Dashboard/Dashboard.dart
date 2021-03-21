import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:staticwebpage/Dashboard/src/Tabs.dart';
import 'package:staticwebpage/Dashboard/src/progressCard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 100.0,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.63,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
                child: Text(
                  'Ongoing Projects',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tabs(),
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProjectProgressCard(
                        color: Color(0xffFF4C60),
                        projectName: 'The Maptrix',
                        percentComplete: '34%',
                        progressIndicatorColor: Colors.redAccent[100],
                        icon: Feather.moon,
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
