import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_session_6/core/utils/app_assets.dart';
import 'package:islami_session_6/core/utils/app_colors.dart';
import 'package:islami_session_6/core/utils/app_routes.dart' show AppRoutes;
import 'package:islami_session_6/core/utils/app_styles.dart';

class PageOnBoarding extends StatelessWidget {
  const PageOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          SafeArea(child: Image.asset(AppAssets.logo)),
          Expanded(
            child: IntroductionScreen(
              globalBackgroundColor: AppColors.blackColor,
              pages: [
                PageViewModel(
                  title: "Welcome To Islmi App",
                  body: "",
                  image: Image.asset(AppAssets.introductionScreenImage1),
                  decoration: getPageDecoration(),
                ),
                PageViewModel(
                  title: "Welcome To Islami",
                  body: "We Are Very Excited To Have You In Our\nCommunity",
                  image: Image.asset(AppAssets.introductionScreenImage2),
                  decoration: getPageDecoration(),
                ),
                PageViewModel(
                  title: "Reading the Quran",
                  body: "Read, and your Lord is the Most Generous",
                  image: Image.asset(AppAssets.introductionScreenImage3),
                  decoration: getPageDecoration(),
                ),
                PageViewModel(
                  title: "Bearish",
                  body: "Praise the name of your Lord, the Most\nHigh",
                  image: Image.asset(AppAssets.introductionScreenImage4),
                  decoration: getPageDecoration(),
                ),
                PageViewModel(
                  title: "Holy Quran Radio",
                  body: "You can listen to the Holy Quran Radio\nthrough the application for free and easily",
                  image: Image.asset(AppAssets.introductionScreenImage5),
                  decoration: getPageDecoration(),
                ),
              ],
              next: Text('Next', style: AppStyles.bold16primary),
              done: Text('Finish', style: AppStyles.bold16primary),
              onDone: () {
                Navigator.of(context).pushNamed(AppRoutes.homeRuoteName);
              },
              showBackButton: true,
              back: Text('Back', style: AppStyles.bold16primary),
              dotsDecorator: getDotDecoration(),
            ),
          ),
        ],
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle: AppStyles.bold24primary,
      bodyTextStyle: AppStyles.bold20primary,
      imagePadding: EdgeInsets.symmetric(vertical: 10),
      titlePadding: EdgeInsets.symmetric(vertical: 26),
      bodyPadding: EdgeInsets.symmetric(vertical: 26),
      //imagePadding: EdgeInsets.symmetric(vertical: 20)
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
      color: Color(0xFF707070),
      size: Size(8, 8),
      activeSize: Size(18, 8),
      activeColor: AppColors.primaryColor,
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(28),
      ),
    );
  }
}
