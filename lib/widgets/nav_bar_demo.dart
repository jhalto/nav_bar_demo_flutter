import 'package:flutter/material.dart';
import 'package:nav_bar_demo/widgets/homepage.dart';
import 'package:nav_bar_demo/widgets/row_column.dart';
import 'package:nav_bar_demo/widgets/expanded.dart';

class NavBarDemo extends StatefulWidget {
  const NavBarDemo({super.key});

  @override
  State<NavBarDemo> createState() => _NavBarDemoState();
}

class _NavBarDemoState extends State<NavBarDemo> {
  List<Widget> pages=[HomePage(),RowColumn(),ExpandedDemo()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30,

        onTap: (val){
          setState(() {
            currentIndex=val;
          });
        },
        currentIndex: currentIndex,
        selectedFontSize: 25,
        items: [
             BottomNavigationBarItem(
                 tooltip: 'this is home',

                 icon: Icon(Icons.home),label: "Home"),
             BottomNavigationBarItem(
               tooltip: "rows",
                 backgroundColor: Colors.red,
                 icon: Icon(Icons.table_rows),label: "Rows_Column"),
             BottomNavigationBarItem(
               tooltip: "Expanded",
                 backgroundColor: Colors.green,
                 icon: Icon(Icons.expand),label: "Expanded")
        ],
      ),
    );
  }
}
