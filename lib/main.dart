import 'package:flutter/material.dart';
import 'package:shutter_cam/main_page/bottomNavigate.dart';
import 'package:flutter/services.dart';
import 'package:shutter_cam/welcome_screen/splash.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF4CDBC4),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
