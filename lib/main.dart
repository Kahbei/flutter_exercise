import 'package:flutter/material.dart';

import 'login_page.dart';
import 'homePage.dart';
import 'localisation.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page d\'accueil',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: const LoginPage(),
      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => const HomePage(),
        '/map' : (BuildContext context) => const MapApp(),
        '/login' : (BuildContext context) => const LoginPage()
      }
    );
  }
}


