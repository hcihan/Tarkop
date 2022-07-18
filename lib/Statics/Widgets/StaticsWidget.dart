import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StaticsWidget extends StatelessWidget {
  StaticsWidget({
    required this.title,
    required this.percent,
    required this.hours,
    required this.pad,
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);
  String title,percent,hours;
  double pad;
  IconData icon;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Icon(icon,color:color,),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(width: MediaQuery.of(context).size.width*pad,),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: CircularPercentIndicator(
                  radius: 16.0,
                  lineWidth: 2.0,
                  percent: 0.3,
                  center: Text(percent),
                  progressColor: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Row(
            children: [
              Icon(Icons.access_time,color: Colors.grey,size: 18,),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Text(hours),
            ],
          ),
        ),
      ],
    );
  }
}