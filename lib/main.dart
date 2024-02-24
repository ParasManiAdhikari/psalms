import 'package:flutter/material.dart';
import 'package:psalms/themes/dark_mode.dart';
import 'package:psalms/themes/light_mode.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: darkMode,
    );
  }
}