import 'package:flutter/material.dart';
import 'package:islami_session_6/core/utils/app_theme.dart';
import 'package:islami_session_6/ui/screens/home/home_screen.dart';
import 'package:islami_session_6/ui/screens/sura_details/sura_details_screen.dart';
import 'package:islami_session_6/ui/view/page_on_boarding.dart';

import 'core/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.introductionScreen,
      routes: {
        AppRoutes.introductionScreen: (context) => PageOnBoarding(),
        AppRoutes.homeRuoteName: (context) => HomeScreen(),
        AppRoutes.suraDetailsRuoteName: (context) => SuraDetailsScreen(),
        //AppRoutes.suraDetails1RuoteName:(context) => SuraDetailsScreen1(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
