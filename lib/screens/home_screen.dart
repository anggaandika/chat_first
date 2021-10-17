import 'package:chat/widget/category_selector.dart';
import 'package:chat/widget/favorite_contacts.dart';
import 'package:chat/widget/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.white,
          iconSize: 30.0,
        ),
        title: const Text(
          "Chats",
          style: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
            iconSize: 30.0,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFEFEBE9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: const <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
