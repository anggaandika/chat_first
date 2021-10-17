import 'package:chat/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.brown).copyWith(
          secondary: Colors.brown[300],
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
