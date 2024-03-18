import 'package:asap_student_app/utils/dependency_binding.dart';
import 'package:asap_student_app/utils/light_theme.dart';
import 'package:asap_student_app/utils/size_config.dart';
import 'package:asap_student_app/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitController(),
      theme: lightTheme,
      home: const SplashScreen(),
    );
  }
}
