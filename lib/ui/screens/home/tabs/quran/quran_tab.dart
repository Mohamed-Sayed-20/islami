import 'package:flutter/material.dart';
import 'package:islami_session_6/core/utils/app_assets.dart';
import 'package:islami_session_6/core/utils/app_colors.dart';
import 'package:islami_session_6/core/utils/app_routes.dart';
import 'package:islami_session_6/core/utils/app_size_utils.dart';
import 'package:islami_session_6/core/utils/app_styles.dart';
import 'package:islami_session_6/model/quran_resources.dart';
import 'package:islami_session_6/ui/screens/home/tabs/quran/widget/most_recent_widget.dart';
import 'package:islami_session_6/ui/screens/home/tabs/quran/widget/sura_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = context.width;
    double height = context.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: height * 0.02,
        children: [
          _builtSearchSection(),
          MostRecentWidget(),
          Text('Suras List', style: AppStyles.bold16white),
          _builtSuraListSection(
            onSuraItemClick: (index) {
              //todo: Click
              Navigator.of(context).pushNamed(AppRoutes.suraDetailsRuoteName,
                  arguments: index);
            },)
        ],
      ),
    );
  }

  OutlineInputBorder _buildDecorationBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(width: 2, color: AppColors.primaryColor),
    );
  }

  Widget _builtSearchSection() {
    return TextField(
      style: TextStyle(color: AppColors.whiteColor),
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        enabledBorder: _buildDecorationBorder(),
        focusedBorder: _buildDecorationBorder(),
        hintText: 'Sura Name',
        hintStyle: AppStyles.bold16white,
        prefixIcon: Image.asset(AppAssets.iconSearch),
      ),
    );
  }

  Widget _builtSuraListSection({required void Function(int) onSuraItemClick}) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              onSuraItemClick(index);
            },
            child: SuraItem(index: index),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            height: context.height * 0.04,
            color: AppColors.whiteColor,
            indent: context.width * 0.06,
            endIndent: context.width * 0.06,
          );
        },
        itemCount: QuranResources.versesNumbersList.length,
      ),
    );
  }
}
