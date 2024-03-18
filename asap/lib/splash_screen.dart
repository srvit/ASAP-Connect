import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String registerStatus = '0';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/pngs/splash_screen.png"), fit: BoxFit.cover)),
       child:
       Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             const SizedBox(
               height: 120,
             ),
             Container(

              child: Center(
          child: Image.asset(
            "assets/images/pngs/logo.png",
            width: 150,
            //height: 61,
          ),
        ),
              ),
             const SizedBox(
               height: 120,
             ),
             Container(
               child: Center(
                 child: Image.asset(
            "assets/images/pngs/logo_gov.png",
            width: 93,
            height: 60,
          ),
        ),
    ),
             /*Text(
               "A GOVERNMENT OF KERALA COMPANY",
               style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Color(0xff2B2A2A), fontFamily: "mulish" ),
             ),*/

             const SizedBox(
               height: 5,
             ),
             Text(
               "A GOVERNMENT OF KERALA COMPANY",
               style: GoogleFonts.mulish(fontSize: 13, fontWeight: FontWeight.w700, color:const Color(0xff2B2A2A)),
                // (
                //   fontSize: 16, fontWeight: FontWeight.w500, color: const Color(0xff2B2A2A)),
             )

    ],
      ),
    ),
    );
  }
}
