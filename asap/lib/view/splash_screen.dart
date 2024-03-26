import 'dart:developer';

import 'package:asap/services/shared_pref.dart';
import 'package:asap/utils/decorations.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:asap/view/onboard_screen.dart';
import 'package:asap/view_model/dashboardcontroller%20.dart';
import 'package:asap/view_model/login_controller.dart';
import 'package:asap/view_model/recommented.dart';
import 'package:asap/view_model/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoardScreen();
  }

  final controller = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: CustomDecorations.scaffoldImageDecoration,
        width: double.infinity,
        height: double.infinity,
        // color: AppColor.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            SvgPicture.asset('assets/svg/splash_img.svg'),
            const SizedBox(height: 130),
            // Image.asset(
            //   'assets/images/ASAP_logo.png',
            // ),
            Center(
              child: Image.asset(
                "assets/images/pngs/ASAP-logo.png",
                width: 160,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'A GOVERNMENT OF KERALA COMPANY',
              style: CustomStyles.splashText,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> navigateToOnBoardScreen() async {
    final userID = SharedPref.instence.getUserId();
    log(userID ?? "empty userID");
    final accessToken = SharedPref.instence.getUserAccessToken();
    log(accessToken ?? "empty acesstoken");
    final refreshToken = SharedPref.instence.getUserRefreshToken();
    log(refreshToken ?? "empty refreshtoken");
    final name = SharedPref.instence.getName();
    log(name ?? "empty name");

    if (refreshToken != null && accessToken != null) {
      Get.find<RecommentedController>().fetchRecommentedCourses();
      Get.put(DashboardController()).getDashBoardData();
      //  await Get.find<LoginController>.
      await Future.delayed(const Duration(seconds: 3));
      // Get.off(() => const DashboardContainerScreen());
    } else {
      await Future.delayed(const Duration(seconds: 3));
      Get.off(() => const OnBoardScreen());
    }

    // await Future.delayed(const Duration(seconds: 3));
    // Get.off(() => const OnBoardScreen());
  }
}
