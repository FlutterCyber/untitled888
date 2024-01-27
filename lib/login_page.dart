import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String login = "";
  String pasword = "";

  void showInfo() {
    setState(() {
      login = loginController.text.trim();
      pasword = passwordController.text.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Login Page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: loginController,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
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
              height: 20,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: passwordController,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  //suffixIcon: Icon(Icons.account_circle,color: Colors.grey,),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  showInfo();
                },
                child: Text("Show info")),
            const SizedBox(
              height: 30,
            ),
            Text(
              login,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text(
              pasword,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
