import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../HomeScreen/Categories/Categories.dart';
import 'GoaslWidget.dart';
class MyGoalScreen extends StatefulWidget {
  const MyGoalScreen({Key? key}) : super(key: key);

  @override
  State<MyGoalScreen> createState() => _MyGoalScreenState();
}

class _MyGoalScreenState extends State<MyGoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width*0.2,
        backgroundColor:Color(0xff041F4E),
        title: Text("My Goals",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(FontAwesomeIcons.plus),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                borderOnForeground: true,
                elevation: 10,
                child: GoalsWidget(iconColor: Colors.red,icon: FontAwesomeIcons.figma,title: "Figma",spend: "Spend more than 5h",spendColor: Colors.blue,hours:"09h 41m",pad: 0.50,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                borderOnForeground: true,
                elevation: 10,
                child: GoalsWidget(iconColor: Colors.green,icon: FontAwesomeIcons.spotify,title: "Spotify",spend: "Spend less than 2h",spendColor: Colors.red,hours: "02h 41m",pad: 0.50,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                borderOnForeground: true,
                elevation: 10,
                child: GoalsWidget(iconColor: Colors.blue,icon: FontAwesomeIcons.linkedin,title: "Linkedln",spend: "Spend less than 2h",spendColor: Colors.red,hours: "01h 41m",pad:0.48,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                borderOnForeground: true,
                elevation: 10,
                child:
                GoalsWidget(iconColor: Colors.red,icon: FontAwesomeIcons.youtube,title: "Youtube",spend: "Spend less than 2h",spendColor: Colors.red,hours: "03h 41m",pad:0.48,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


