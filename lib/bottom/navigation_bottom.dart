import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/bottom.dart';
import 'package:flutter_application_1/bottom/drawer.dart';
import 'package:flutter_application_1/bottom_list_body/business.dart';
import 'package:flutter_application_1/bottom_list_body/card.dart';
import 'package:flutter_application_1/bottom_list_body/profile.dart';
import 'package:flutter_application_1/bottom_list_body/school.dart';
import 'package:flutter_application_1/bottom_list_body/settings.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({
    super.key,
  });

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  List screens = [
    const Profile(),
    const Business(),
    const Cards(),
    const School(),
    const Settings(),
  ];

  void _navigatingList(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('It has been a Long Journey.'),
      // ),
      drawer: const Drawers(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,
        onTap: _navigatingList,
      ),
    );
  }
}
