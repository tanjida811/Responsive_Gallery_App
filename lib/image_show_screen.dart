import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageShowScreen extends StatelessWidget {
 final String imageUrl;
  const ImageShowScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
          imageUrl,
          height: double.infinity,
          width: double.infinity,
          fit:BoxFit.cover,
      ),
    );
  }
}
