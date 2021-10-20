import 'package:chat/models/user_model.dart';
import 'package:flutter/material.dart';

class PhotoSee extends StatelessWidget {
  final String urlImage;
  const PhotoSee({required this.urlImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
