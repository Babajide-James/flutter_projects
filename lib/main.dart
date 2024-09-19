import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/navigation_bottom.dart';
import 'package:flutter_application_1/bottom_list_body/business.dart';
import 'package:flutter_application_1/bottom_list_body/profile.dart';
import 'package:flutter_application_1/bottom_list_body/school.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(100, 39, 120, 150)),
        ),
        home: const NavigationScreen(),
        routes: {
          '/profile': (context) => const Profile(),
          '/business': (context) => const Business(),
          '/school': (context) => const School(),
        });
  }
}
