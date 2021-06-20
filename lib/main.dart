import 'package:face_scaner/config/di/di.dart';
import 'package:face_scaner/domain/orientation_service.dart';
import 'package:face_scaner/ui/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDI();

  await inject<OrientationService>().setOrientation([
    AppOrientation.portraitUp,
  ]);

  runApp(App());
}
