import 'package:flutter/material.dart';
import 'package:gallery_app/gallery_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

