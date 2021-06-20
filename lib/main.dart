import 'package:face_scaner/config/di/di.dart';
import 'package:face_scaner/ui/app.dart';
import 'package:flutter/material.dart';

void main() {
  configureDI();
  runApp(App());
}
