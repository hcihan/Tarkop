import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tarkop/Statics/Widgets/StaticsWidget.dart';
class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color(0xff041F4E),
            height: MediaQuery.of(context).size.height*0.438,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.access_time,size: 50,color: Colors.grey,),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          Text("Logged Time",style: TextStyle(color: Colors.grey,fontSize: 17),),
                          Text("09h 41m",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Productive",style: TextStyle(color: Colors.grey,fontSize: 20),),
                        Text("05h 32m",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Unproductive",style: TextStyle(color: Colors.grey,fontSize: 20),),
                        Text("03h 09m",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  center: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(25)),
                      Text("Total Score",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      Text("56.9",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                      Text("Productive",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    ],
                  ),
                  radius: 100.0,
                  animation: true,
                  animationDuration: 2000,
                  lineWidth: 10.0,
                  percent: 0.6,
                  arcBackgroundColor: Colors.red,
                  arcType: ArcType.FULL,
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Colors.transparent,
                  progressColor: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          StaticsWidget(icon: FontAwesomeIcons.spotify,color: Colors.green,title: "Spotify",hours: "02h 30m",percent: "%20",pad: 0.54,),
          StaticsWidget(icon: FontAwesomeIcons.twitter,color: Colors.blue,title: "Twitter",hours: "02h 30m",percent: "%39",pad: 0.54,),
          StaticsWidget(icon: FontAwesomeIcons.youtube,color: Colors.red,title: "Youtube",hours: "02h 30m",percent: "%39",pad: 0.51,),
        ],
      ),
    );
  }

}

