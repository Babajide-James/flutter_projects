import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/drawer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int count = 0;
  void _counting() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(100, 120, 200, 100),
      drawer: const Drawers(),
      appBar: AppBar(
        title: const Text('Personal Information'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This your Profile Page'),
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
