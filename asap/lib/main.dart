import 'package:asap/core/app_export.dart';
import 'package:asap/routes/app_routes.dart';
import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/dependency_binding.dart';
import 'package:asap/utils/light_theme.dart';
import 'package:asap/utils/size_config.dart';
import 'package:asap/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.instence.initStorage();
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
        systemNavigationBarColor: Colors.white,
      ),
    );

    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ASAP',
        initialBinding: InitController(),
        theme: lightTheme,
        home: const SplashScreen(),
        routes: AppRoutes.routes,
      ),
    );
  }
}
