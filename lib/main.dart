import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psalms/models/playlist_provider.dart';
import 'package:psalms/themes/theme_provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => PlaylistProvider()),
  ],
  child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
