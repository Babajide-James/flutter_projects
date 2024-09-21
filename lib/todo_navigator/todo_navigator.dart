import 'package:flutter/material.dart';
// import 'package:note_book/todo_list/todo_list.dart';

class ToDoTile extends StatelessWidget {
  final String onNoteName;
  final bool onValue;
  final Function(bool?)? onChanged;

  const ToDoTile(
      {super.key,
      required this.onNoteName,
      required this.onValue,
      required this.onChanged});

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: <Widget>[
          // Size.fromWidth(24.0),
          Checkbox(
            value: onValue,
            onChanged: onChanged,
          ),
          Text(onNoteName),
        ],
      ),
    );
  }
}
