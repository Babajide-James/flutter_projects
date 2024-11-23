import 'package:cat_animation/src/cat_animation/cat_animation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late Animation<double> catAnimation;
  late AnimationController catController;
  late Animation<double> boxAnimation;
  late AnimationController boxController;

  @override
  initState() {
    super.initState();
    catController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 150,
      ),
    );
    catAnimation = Tween(
      begin: -20.0,
      end: -50.0,
    ).animate(CurvedAnimation(
      parent: catController,
      curve: Curves.easeIn,
    ));

    boxController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
    );

    boxAnimation = Tween(
      begin: pi / 1.5,
      end: pi / 1.6,
    ).animate(
      CurvedAnimation(
        parent: boxController,
        curve: Curves.linear,
      ),
    );
  }

  onTap() {
    if (catController.status == AnimationStatus.completed) {
      boxController.repeat();
      catController.reverse();
    } else if (catController.status == AnimationStatus.dismissed) {
      boxController.stop();
      catController.forward();
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text('Cat Animation Project'),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: onTap,
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                cat(),
                box(),
                rightFlap(),
                leftFlap(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cat() {
    return AnimatedBuilder(
      animation: catAnimation,
      builder: (context, child) {
        return Positioned(
          top: catAnimation.value,
          right: 0.0,
          left: 0,
          child: const BoxCatAnimation(),
        );
      },
    );
  }

  Widget box() {
    return Container(
      height: 120,
      width: 120,
      color: Colors.blue,
    );
  }

  Widget rightFlap() {
    return AnimatedBuilder(
      animation: boxAnimation,
      builder: (context, child) {
        return Positioned(
          right: 2,
          top: 1,
          child: Transform.rotate(
            angle: -boxAnimation.value,
            alignment: Alignment.topRight,
            child: Container(
              height: 10,
              width: 100,
              color: Colors.blue,
            ),
          ),
        );
      },
    );
  }

  Widget leftFlap() {
    return Positioned(
      top: 2,
      left: 2,
      child: AnimatedBuilder(
        animation: boxAnimation,
        builder: (context, child) {
          return Transform.rotate(
            angle: boxAnimation.value,
            alignment: Alignment.topLeft,
            child: Container(
              height: 10,
              width: 100,
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   catController.dispose();
  //   boxController.dispose();
  // }
}
