import 'package:flutter/material.dart';
import 'package:funny_project/PageTwo.dart';
import 'package:funny_project/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.homePage,
      routes: {
        HomePage.homePage: (context) => const HomePage(),
        PageTwo.pageTwo: (context) => const PageTwo()
      },
    );
  }
}
