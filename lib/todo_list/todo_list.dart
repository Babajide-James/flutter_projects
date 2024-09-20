import 'package:flutter/material.dart';
import '../todo_navigator/todo_navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // void Function(InvalidType)? onChanged;
  // final bool value;

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ToDoTile(
              onNoteName: 'First Note',
              onValue: false,
              onChanged: (onValue) {},
            ),
            ToDoTile(
              onValue: true,
              onChanged: (onValue) {},
              onNoteName: 'Second Note',
            ),
            // ToDoTile(),
            // ToDoTile(),
          ],
        ),
      ),
    );
  }
}
