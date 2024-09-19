import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/drawer.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int count = 0;
  void _counting() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawers(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings Page'),
      ),
      backgroundColor: const Color.fromARGB(255, 235, 235, 12),
      body: Padding(
        padding: const EdgeInsets.only(left: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This page is for Settings'),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: _counting,
              child: const Text('Click Here'),
            ),
          ],
        ),
      ),
    );
  }
}
