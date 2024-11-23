import 'package:flutter/material.dart';

class BoxCatAnimation extends StatefulWidget {
  const BoxCatAnimation({super.key});
  @override
  createState() {
    return BoxCatAnimationState();
  }
}

class BoxCatAnimationState extends State<BoxCatAnimation> {
  @override
  Widget build(context) {
    return Image.network('https://imgur.com/QwhZRyL.png');
  }
}
