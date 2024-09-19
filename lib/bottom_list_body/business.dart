import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/drawer.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
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
      backgroundColor: const Color.fromARGB(255, 207, 151, 151),
      appBar: AppBar(
        title: const Text('Business Information'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This page is for Business'),
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
