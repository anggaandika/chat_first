import 'package:flutter/material.dart';

class PhotoSee extends StatelessWidget {
  final String urlImage, title;
  const PhotoSee({
    required this.urlImage,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(title),
        actions: <Widget>[
          IconButton(
            iconSize: 30.0,
            color: Colors.white,
            icon: const Icon(Icons.image),
            onPressed: (() {}),
          ),
        ],
      ),
      body: Center(
        child: Image.asset(
          urlImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
