import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:untitled8/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home Page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SecondPage.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.teal,
            child: const Center(
              child: Text(
                "Page 1",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(
              child: Text(
                "Page 2",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "Page 3",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
            pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyBold.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyBold.game,
              ),
              label: "Account"),
        ],
        selectedItemColor: Colors.green,
      ),
    );
  }
}
