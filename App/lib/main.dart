import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'mappage.dart';
import 'search.dart';
import 'src/locations.dart' as locations;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        /*AppBar(
          title: const Text('BirdGO'),
          backgroundColor: Colors.green[700],
        ),*/
        body: Stack(
          fit: StackFit.expand,
          children: [
            MapPage(),
            buildFloatingSearchBar(),
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            right: false,
            child: Center(
              child: Text('Drawer content'),
            ),
          ),
        ),
      ),
    );
  }
}
