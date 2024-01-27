import 'package:flutter/material.dart';
import 'package:untitled8/home_page.dart';
import 'package:untitled8/login_page.dart';
import 'package:untitled8/second_page.dart';
import 'package:untitled8/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SecondPage.id: (context) => const SecondPage(),
        ThirdPage.id: (context) => const ThirdPage(),
        LoginPage.id: (context) => const LoginPage(),
      },
    );
  }
}
