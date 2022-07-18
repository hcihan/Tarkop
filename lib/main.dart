
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'BottomBar/BottomBarScreen.dart';

  void main() => runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "PT Sans Narrow",
        ),
      home: MyApp()
  ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:BottomBarScreen(),
    );
  }
}