import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 20,
              ),
              backgroundColor: Color.fromARGB(255, 128, 128, 2),
              label: 'Profile'),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 104, 182, 8),
            icon: Icon(
              Icons.business,
              // size: 20,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(200, 150, 0, 0),
            icon: Icon(
              Icons.attach_money,
              size: 20,
            ),
            label: 'Investment',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 55, 116, 2),
            icon: Icon(
              Icons.school,
              size: 20,
            ),
            label: 'Qualification',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 184, 184, 25),
            icon: Icon(
              Icons.settings,
              size: 20,
            ),
            label: 'Settings',
          ),
        ]);
  }
}
