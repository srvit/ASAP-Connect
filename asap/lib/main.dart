import 'package:asap/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ASAP',
      theme: ThemeData(
          primaryColor: const Color(0xFF51CED6), fontFamily: "Mulish"),

      home: const SplashScreen(),
      //routes: checkConnection(),
    );
  }
}
