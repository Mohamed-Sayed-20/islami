import 'package:flutter/material.dart';
import 'package:islami_session_6/ui/screens/home/home_screen.dart';

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
      initialRoute: AppRoutes.homeRuoteName,
      routes: {AppRoutes.homeRuoteName: (context) => HomeScreen()},
    );
  }
}
