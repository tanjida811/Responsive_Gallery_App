import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gallery_app/image_show_screen.dart';

List<Map<String, String>> imageList = [
  {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s"},
  {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXgoX7Qgj6Ujsnq0Wb4ikJmY78vdHDpv-7_w&s"},
  {"image": "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?cs=srgb&dl=pexels-jonaskakaroto-736230.jpg&fm=jpg"},
  {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMMHVIxK_IemJX8RWanfPUkjNf-piZLiLTjS7UzFchR7YqHzrJHH3_0gpQ59-_8jfpf9k&usqp=CAU"},
  {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s"},
  {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXgoX7Qgj6Ujsnq0Wb4ikJmY78vdHDpv-7_w&s"},
];

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: MasonryGridView.builder(
        itemCount: imageList.length,
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          var _height = Random().nextInt(200) + 150; // Random height for the images

          return Card(
            shadowColor: Colors.lightGreenAccent.withOpacity(0.7),
            elevation: (Random().nextInt(20) + 10).toDouble(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageShowScreen(
                      imageUrl: imageList[index]['image']!,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  imageList[index]['image']!,
                  fit: BoxFit.cover,
                  height: _height.toDouble(), // Assign random height to the image
                ),
              ),
            ),
          );
        },
      ),
    );
   // );
  }
}
