import 'package:flutter/material.dart';
import 'package:shutter_cam/main_page/bottomNavigate.dart';

import 'package:shutter_cam/welcome_screen/login.dart';
import 'package:shutter_cam/welcome_screen/register.dart';
import 'package:shutter_cam/welcome_screen/splash.dart';
import 'package:shutter_cam/main_page/dashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavigate(),
  ));
}
