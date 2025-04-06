import 'package:expense_tracker/screens/home/views/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../activity/activity.dart';
import 'add_record.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var activityList = [
    MainScreen(),
    ActivityScreen(),
  ];

  int index = 0;

  late Color selectedColor = Colors.blue.shade800;
  Color unselectedColor = Colors.grey;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30)
      ),
       child: BottomNavigationBar( 
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 3,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home, 
            color: index == 0 ? selectedColor : unselectedColor,
            ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.graph_square_fill,
            color: index == 1 ? selectedColor : unselectedColor,
            ),
            label: 'Activity'
          )
        ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const AddRecord(),
          ),
          );
        },
        child: const Icon(
          CupertinoIcons.add, size: 26, color: Colors.white,
        )
      ),
      body: index == 0 ? const MainScreen() : const ActivityScreen(),
    );
  }
}