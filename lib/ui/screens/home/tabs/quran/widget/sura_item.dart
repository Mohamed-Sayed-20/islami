import 'package:flutter/material.dart';
import 'package:islami_session_6/core/utils/app_assets.dart';
import 'package:islami_session_6/core/utils/app_size_utils.dart';
import 'package:islami_session_6/core/utils/app_styles.dart';
import 'package:islami_session_6/model/quran_resources.dart';

class SuraItem extends StatelessWidget {
  final int index;

  const SuraItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var width = context.width;
    var height = context.height;
    return Row(
      spacing: width * 0.05,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.vector),
            Text('${index + 1}', style: AppStyles.bold14white),
          ],
        ),
        Column(
          spacing: height * 0.01,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              QuranResources.englishQuranSuraList[index],
              style: AppStyles.bold20white,
            ),
            Text(
              '${QuranResources.versesNumbersList[index]} verses ',
              style: AppStyles.bold14white,
            ),
          ],
        ),
        Spacer(),
        Text(
          QuranResources.arabicQuranSuraList[index],
          style: AppStyles.bold20white,
        ),
      ],
    );
  }
}
