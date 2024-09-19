import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/drawer.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardState();
}

class _CardState extends State<Cards> {
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
      backgroundColor: const Color.fromRGBO(100, 120, 200, 100),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Finance and Investment'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This page is for Investment'),
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
