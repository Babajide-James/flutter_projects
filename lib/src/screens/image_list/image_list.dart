import 'package:flutter/material.dart';
// import 'package:note_pad/src/screen1.dart';
import 'package:note_pad/src/screens/json_pics.dart';

// ignore: must_be_immutable
class ImagesList extends StatelessWidget {
  final List<JsonPics> images;

  const ImagesList(this.images, {super.key});
  @override
  Widget build(context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return imageNetwork(images[index]);
        });
  }

  Widget imageNetwork(JsonPics images) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: const Color.fromARGB(255, 17, 23, 24),
        ),
      ),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Image.network(images.url)),
          Text(images.title),
        ],
      ),
    );
  }
}
