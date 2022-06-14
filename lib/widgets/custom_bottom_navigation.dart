import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBottomBar extends StatelessWidget {
  const CustomNavigationBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return CupertinoTabBar(
        /*
        material:
        showSelectedLabels:false,showUnselectedLabels:false
        */
        inactiveColor: const Color.fromRGBO(116, 117, 152, 1),
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar, size: 35)),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month, size: 35)),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined, size: 35))
        ],
        currentIndex: 0,
        activeColor: Colors.pink,
        onTap: (_) {
          print('hello');
        },
      );
    } on Exception catch (e) {
      return Text(e.toString());
    }
  }
}
