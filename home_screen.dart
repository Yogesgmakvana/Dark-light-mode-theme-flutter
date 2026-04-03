import 'package:chats_app/theme/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback theming;

  HomeScreen({super.key, required this.theming});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    
 bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: widget.theming, icon:Icon(isDark ? Icons.dark_mode : Icons.light_mode)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('hello',style:heading1(
              headingColors: Colors.black45,
            )),

            Text('We are working with the system which is working with us',style:Theme.of(context).textTheme.displayLarge),
            
          ],
        ),
      ),
    );
  }
}










  // List<PieChartSectionData> data = [
  //   PieChartSectionData(value: 40, color: Colors.blue, title: '40%'),
  //   PieChartSectionData(value: 30, color: Colors.red, title: '30%'),
  //   // PieChartSectionData(value: 20, color: Colors.green, title: '20%'),
  //   // PieChartSectionData(value: 10, color: Colors.yellow, title: '10%'),
  // ];

  // Center(
  //             child: Container(
  //               height: 300,
  //               width: 300,
  //               child: PieChart(
                  
  //                 PieChartData(
  //                   pieTouchData: PieTouchData(mouseCursorResolver:(p0, p1) {
  //                     return MouseCursor.defer;
  //                   },),
  //                   borderData: FlBorderData(border: Border.all(width: 2,color:Colors.black)),
  //                   sections: data,
  //                   // read about it in the PieChartData section
  //                 ),
  //                 duration: Duration(milliseconds: 150), // Optional
  //                 curve: Curves.linear, // Optional
  //               ),
  //             ),
  //           ),