import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget{
  final String onNoteName;
  final bool onValue;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.onNoteName,
    required this.onValue,
    required this.onChanged
  });

  @override
  Widget build(context) {
    return Container(
      padding: EdgeInsets.all(30.0),
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
