import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:note_pad/src/screens/image_list/image_list.dart';
import 'screens/json_pics.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;
  List<JsonPics> images = [];
  void returnCount() async {
    count++;
    final response = await get(
        Uri.parse("https://jsonplaceholder.typicode.com/photos/$count"));
    // print(response.body);
    final imageResponse = JsonPics.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageResponse);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(120, 220, 220, 1)),
        // scaffoldBackgroundColor: const Color.fromRGBO(100, 120, 220, 1),
        // brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(100, 120, 111, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(200, 190, 180, 1),
          title: const Text('From a New Tutor'),
          centerTitle: true,
        ),
        body: ImagesList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: returnCount,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
