import 'package:face_scaner/ui/face_scan/face_scan_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FaceScanPage(),
    );
  }
}
