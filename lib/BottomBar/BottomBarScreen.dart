
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../HomeScreen/HomePage.dart';
import '../MyGoals/MyGoalsScreen.dart';
import '../Statics/StaticScreen.dart';


class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}
class _BottomBarScreenState extends State<BottomBarScreen> {
  int secindex=0;
  var list=[HomePageScreen(),MyGoalScreen(),StaticScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[secindex],
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor:Color(0xff041F4E),
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home, color: Colors.white),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_thresholding, color: Colors.white),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_line_chart_sharp,color: Colors.white,),
              label: ""),
        ],
        currentIndex: secindex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          setState(() {
            secindex=index;
          });
        },
      ),

    );
  }
}
