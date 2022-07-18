import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'Appss/Apss.dart';
import 'Categories/Categories.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with SingleTickerProviderStateMixin{
  final List<String> items = [
    'Today',
    'Today1',
    'Today2',
    'Today3',
  ];
  String? selectedValue;
  late final TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              toolbarHeight: height*0.1,
              backgroundColor:Color(0xff041F4E),
              actions: [
                Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children:const [
                             SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Text(
                                "a",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: items
                            .map((item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value.toString();
                          });
                        },
                        iconSize: 14,
                        iconEnabledColor: Colors.white,
                        iconDisabledColor: Colors.grey,
                        buttonHeight: 40,
                        buttonWidth: 100,
                        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        buttonElevation: 2,
                        itemHeight: 20,
                        itemPadding: const EdgeInsets.only(left: 14, right: 14),

                        dropdownPadding: null,
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.black,
                        ),
                        dropdownElevation: 8,
                        scrollbarRadius: const Radius.circular(40),
                        scrollbarThickness: 6,
                        scrollbarAlwaysShow: true,
                        offset: const Offset(-20, 0),
                      ),
                    ),
                    SizedBox(width:11,),
                    Icon(Icons.calendar_today,color: Colors.white,)
                  ],
                ),
              ],
              title: Text("Activities",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),
              pinned: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                labelStyle: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                tabs:const [
                  Tab(text: 'Categories'),
                  Tab(text: 'Bluetooth'),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children:[
            Categories(),
            Apps(),
          ],
        ),
      ),
    );
  }
}
