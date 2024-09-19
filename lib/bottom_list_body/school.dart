import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/drawer.dart';

class School extends StatefulWidget {
  const School({super.key});

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
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
      backgroundColor: const Color.fromARGB(156, 43, 56, 61),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Educational Qualification'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This page is for Academia',
              style: TextStyle(color: Color.fromRGBO(92, 43, 92, 1)),
            ),
            Text(
              count.toString(),
              style: const TextStyle(
                  fontSize: 40, color: Color.fromRGBO(92, 43, 92, 1)),
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
