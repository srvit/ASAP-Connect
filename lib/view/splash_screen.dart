import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/view/onboard_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    navigateToOnBoardScreen();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColor.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/splash_img.svg'),
            const SizedBox(height: 130),
            Image.asset(
              'assets/images/ASAP_logo.png',
            ),
            const Text(
              'A GOVERNMENT OF KERALA COMPANY',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> navigateToOnBoardScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => const OnBoardScreen());
  }
}
