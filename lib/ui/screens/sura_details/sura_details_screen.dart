import 'package:flutter/material.dart';
import 'package:islami_session_6/core/utils/app_assets.dart';
import 'package:islami_session_6/core/utils/app_colors.dart';
import 'package:islami_session_6/core/utils/app_size_utils.dart';
import 'package:islami_session_6/core/utils/app_styles.dart';
import 'package:islami_session_6/model/quran_resources.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.width;
    var height = context.height;
    int index = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        title: Text(
          QuranResources.englishQuranSuraList[index],
          style: AppStyles.bold20primary,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.leftCorner),
                    Image.asset(AppAssets.rightCorner),
                  ],
                ),
                Text(
                  QuranResources.arabicQuranSuraList[index],
                  style: AppStyles.bold20primary,
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Image.asset(AppAssets.mosqueImage),
        ],
      ),
    );
  }
}
