import 'package:flutter/material.dart';
import 'package:islami_session_6/core/utils/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarThemeData(
      backgroundColor: AppColors.blackColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.primaryColor),
    ),
    // textTheme: TextTheme(
    //   headlineLarge: AppStyles.bold16white
    // )
  );
}
