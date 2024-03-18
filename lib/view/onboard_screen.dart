import 'package:asap_student_app/utils/colors.dart';
import 'package:asap_student_app/utils/text_styles.dart';
import 'package:asap_student_app/view/login_screen.dart';
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
      "title_text": "course",
      "image": "assets/images/onboarding_img1.jpg"
    },
    {
      "text":
          "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "title_text": "Events",
      "image": "assets/images/onboarding_img2.jpg"
    },
    {
      "text":
          "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "title_text": "Community",
      "image": "assets/images/onboarding_img3.jpg"
    },
    {
      "text":
          "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "title_text": "Internship/Jobs",
      "image": "assets/images/onboarding_img4.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 6,
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
                      const Spacer(),
                      Text(
                        splashData[index]['title_text']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        splashData[index]['text']!,
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Handle skip functionality
                          Get.off(const LoginScreen());
                        },
                        child: const Row(
                          children: [
                            Text(
                              'Skip ',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                              ),
                            ),
                            Text(
                              ">>",
                              style: CustomStyles.normalText14,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .2,
                      ),
                      Row(
                        children: List.generate(
                          splashData.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.only(right: 5),
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                              color: currentPage == index
                                  ? AppColor.primaryColor
                                  : const Color(0xFFD8D8D8),
                              borderRadius: BorderRadius.circular(3),
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
      ),
    );
  }
}
