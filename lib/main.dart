import 'package:flutter/material.dart';
import 'package:simple_url_launcher_app/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple URL Launcher App',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
