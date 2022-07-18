import 'package:flutter/material.dart';
class GoalsWidget extends StatelessWidget {
  GoalsWidget({
    required this.hours,
    required this.title,
    required this.spend,
    required this.pad,
    required this.icon,
    required this.spendColor,
    required this.iconColor,
    Key? key,
  }) : super(key: key);
  String title,spend,hours;
  double pad;
  IconData icon;
  Color iconColor,spendColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:10.0,left: 30),
          child: Row(
            children: [
              Icon(icon,color:iconColor),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(width: MediaQuery.of(context).size.width*pad,),
              Icon(Icons.more_horiz_rounded,size: 35,),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 65.0),
              child:Text(spend,style: TextStyle(color: spendColor,fontSize: 15),),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Today',style: TextStyle(fontSize: 18),),
                  Text(hours,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(Icons.calendar_today,size: 17,),
                  SizedBox(width: 5,),
                  Text('Everyday',style: TextStyle(fontSize: 18),),
                ],
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(Icons.call_missed_outgoing,size: 20,color: Colors.blue,),
                  SizedBox(width: 5,),
                  Text('Productive',style: TextStyle(fontSize: 18),),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}