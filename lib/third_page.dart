import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:untitled8/login_page.dart';

class ThirdPage extends StatefulWidget {
  static const String id = "third_page";

  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String myText = "";
  String newText = "";
  TextEditingController loginController = TextEditingController();

  void _showOntapText() {
    setState(() {
      newText = loginController.text.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Third Page"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: loginController,
                  onChanged: (String value) {
                    setState(() {
                      myText = value;
                    });
                  },
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "login",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    //suffixIcon: Icon(Icons.account_circle,color: Colors.grey,),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                myText,
                style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  _showOntapText();
                },
                child: Text("Show Text"),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                newText,
                style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
