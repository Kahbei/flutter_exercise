import 'package:flutter/material.dart';

class MapApp extends StatefulWidget {
  const MapApp({super.key});

  @override
  State<StatefulWidget> createState() => _MapPage();
}

class _MapPage extends State<MapApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carte Interactive'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/map_image.png'), // Remplacez 'assets/map_image.png' par le chemin de votre propre image de carte
      ),
    );
  }
}