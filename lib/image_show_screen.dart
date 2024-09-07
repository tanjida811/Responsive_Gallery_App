import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/gallery_screen.dart';

class ImageShowScreen extends StatelessWidget {
 final String imageUrl;
  const ImageShowScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading:IconButton (
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => GalleryScreen(),),);
          },
          icon: Icon(Icons.arrow_back),
        )
      ),
      body: Image.network(
          imageUrl,
          height: double.infinity,
          width: double.infinity,
          fit:BoxFit.cover,
      ),
    );
  }
}
