import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'a.dart';

class Apps extends StatefulWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  var list = ["1"];

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return FlutterBlueApp();
  }
}
