import 'package:asap/utils/colors.dart';
import 'package:asap/utils/decorations.dart';
import 'package:asap/utils/text_styles.dart';
import 'package:asap/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});
  @override
  OnBoardScreenState createState() => OnBoardScreenState();
}

class OnBoardScreenState extends State<OnBoardScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text":
          "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "title_text": "Course",
      "image": "assets/images/pngs/onboarding1.png"
    },
    {
      "text":
          "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "title_text": "Events",
      "image": "assets/images/pngs/onboarding2.png"
    },
    {
      "text":
          "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "title_text": "Community",
      "image": "assets/images/pngs/onboarding3.png"
    },
    {
      "text":
          "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "title_text": "Internship/Jobs",
      "image": "assets/images/pngs/onboarding4.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: CustomDecorations.scaffoldImageDecoration,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => Column(
                  children: <Widget>[
                    const Spacer(),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Image.asset(
                        splashData[index]["image"]!,
                      ),
                    ),
                    Text(
                      splashData[index]['title_text']!,
                      textAlign: TextAlign.center,
                      style: CustomStyles.muslishTitleText,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      splashData[index]['text']!,
                      textAlign: TextAlign.center,
                      style: CustomStyles.muslishText,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          // Handle skip functionality
                          Get.off(() => const LoginScreen());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.textSecondary.withOpacity(0.2),
                              width: .5,
                            ),
                            borderRadius: BorderRadius.circular(33.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Skip',
                                style: CustomStyles.skipText,
                              ),
                              const Icon(
                                Icons.keyboard_double_arrow_right_rounded,
                                size: 18,
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .2,
                    ),
                    Row(
                      children: List.generate(
                        splashData.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.only(right: 5),
                          height: 9,
                          width: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: currentPage == index
                                  ? Colors.transparent
                                  : AppColor.orangeColor,
                              width: .7,
                            ),
                            color: currentPage == index
                                ? AppColor.orangeColor
                                : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
