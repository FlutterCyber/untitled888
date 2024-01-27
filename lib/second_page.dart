import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:untitled8/third_page.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Second Page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, ThirdPage.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
