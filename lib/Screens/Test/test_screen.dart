import 'package:flutter/material.dart';
import 'package:olyoli/Screens/PublicLive/public_live_screen.dart';
import 'package:olyoli/Screens/PublicShorts/public_shorts_screen.dart';
class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with SingleTickerProviderStateMixin{



  int currentIndex = 0;

  List<Widget> listOfColors = [
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.orangeAccent,
    ),
    Container(
      color: Colors.cyanAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tab bar',
        ),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              currentIndex=0;
            });
          }, icon: const Icon(Icons.abc)),
          IconButton(
              onPressed: () {
                setState(() {
                  currentIndex=1;
                });

              }, icon: const Icon(Icons.abc_outlined)),
        ],
      ),
      body: listOfColors[currentIndex],
      // bottomNavigationBar: BottomNavyBar(
      //   selectedIndex: currentIndex,
      //   onItemSelected: (index){
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   items: <BottomNavyBarItem>[
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('Home'),
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.circle_notifications),
      //       title: Text('Notification'),
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.message),
      //       title: Text('Chat'),
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text('Profile'),
      //       activeColor: Colors.blueAccent,
      //       inactiveColor: Colors.lightGreenAccent,
      //     ),
      //   ],
      // ),
    );
  }
}
