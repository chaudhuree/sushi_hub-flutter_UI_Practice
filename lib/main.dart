import 'package:flutter/material.dart';
import 'package:ui_practice/pages/intro_page.dart';
import 'package:ui_practice/pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sushi Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const IntroPage(),
      routes: {
        '/introPage': (context) => const IntroPage(),
        '/menuPage': (context) => const MenuPage(), // Replace with actual MenuPage
      },
    );
  }
}
