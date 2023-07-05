import 'package:flutter/material.dart';

class MapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carte interactive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapPage(),
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carte Interactive'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/map_image.png'), // Remplacez 'assets/map_image.png' par le chemin de votre propre image de carte
      ),
    );
  }
}