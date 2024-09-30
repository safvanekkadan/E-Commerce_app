import 'package:e_commerce/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:scaled_app/scaled_app.dart';

Future<void> main() async {
  ScaledWidgetsFlutterBinding.ensureInitialized(
    scaleFactor: (deviceSize) {
      const widthOfDesign = 375;
      return deviceSize.width / widthOfDesign;
    },
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
