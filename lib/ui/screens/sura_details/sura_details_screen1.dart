import 'package:flutter/material.dart';
import 'package:islami_session_6/core/utils/app_assets.dart';
import 'package:islami_session_6/core/utils/app_colors.dart';
import 'package:islami_session_6/core/utils/app_size_utils.dart';
import 'package:islami_session_6/core/utils/app_styles.dart';
import 'package:islami_session_6/model/quran_resources.dart';

class SuraDetailsScreen1 extends StatelessWidget {
  const SuraDetailsScreen1({super.key});

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.suraDetailsGroup)),
        ),
        padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.12),
        child: Column(
          spacing: height * 0.06,
          children: [
            Text(
              QuranResources.arabicQuranSuraList[index],
              style: AppStyles.bold20primary,
            ),
            Expanded(child: Container(color: AppColors.primaryColor)),
          ],
        ),
      ),
    );
  }
}
