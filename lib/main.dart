import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ojeabuo emmanuel portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:  HomeScreen(),

    );
  }
}


