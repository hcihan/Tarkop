import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'CategoriesWidget.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:30.0,left: 30),
            child: Row(
              children: [
                Icon(Icons.person_outlined,color: Colors.black,),
                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                Text("Social&Mesaaging",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(width: MediaQuery.of(context).size.width*0.25,),
                Icon(Icons.access_time_outlined,color: Colors.grey,size: 15,),
                Text("09h 41m"),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*0.15),
            child: Row(
              children: [
                Text("Unproductive",style: TextStyle(fontSize: 14,color: Colors.redAccent,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 45,
              animation: true,
              lineHeight: 13.0,
              animationDuration: 2000,
              percent: 0.9,
              trailing: Text("%90",style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),),
              barRadius: const Radius.circular(16),
              progressColor: Colors.redAccent,
            ),
          ),
          CategoriesWidget(icon: FontAwesomeIcons.spotify,color: Colors.green,title: "Spotify",hours: "02h 30m",percent: "%20",pad: 0.54,),
          CategoriesWidget(icon: FontAwesomeIcons.twitter,color: Colors.blue,title: "Twitter",hours: "02h 30m",percent: "%39",pad: 0.54,),
          CategoriesWidget(icon: FontAwesomeIcons.youtube,color: Colors.red,title: "Youtube",hours: "02h 30m",percent: "%39",pad: 0.51,),
          CategoriesWidget(icon: FontAwesomeIcons.whatsapp,color: Colors.green,title: "Whatsapp",hours: "02h 30m",percent: "%20",pad: 0.48,),
        ],
      ),
    );
  }
}


