import 'package:flutter/material.dart';
import 'package:islami_session_6/core/utils/app_assets.dart';
import 'package:islami_session_6/core/utils/app_colors.dart';
import 'package:islami_session_6/ui/screens/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_session_6/ui/screens/home/tabs/quran/quran_tab.dart';
import 'package:islami_session_6/ui/screens/home/tabs/radio/radio_tab.dart';
import 'package:islami_session_6/ui/screens/home/tabs/sebha/sebha_tab.dart';
import 'package:islami_session_6/ui/screens/home/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget>tabsList = [
    QuranTab(), HadethTab(), SebhaTab(), RadioTab(), TimeTab(),
  ];

  List<String>backgroundImagesList = [
    AppAssets.quranBg,
    AppAssets.hadethBg,
    AppAssets.sebhaBg,
    AppAssets.radioBg,
    AppAssets.timeBg,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparentColor,
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: AppColors.primaryColor,
        ),
        child: BottomNavigationBar(
            selectedItemColor: AppColors.whiteColor,
            unselectedItemColor: AppColors.blackColor,
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {

              });
            },
            // backgroundColor: AppColors.primaryColor,
            //   type:BottomNavigationBarType.fixed,
            items: [
              builtBottomNavigationBarItem(
                  icon: AppAssets.iconQuran, label: 'Quran', index: 0),
              builtBottomNavigationBarItem(
                  icon: AppAssets.iconHadeth, label: 'Hadeth', index: 1),
              builtBottomNavigationBarItem(
                  icon: AppAssets.iconSebha, label: 'Sebha', index: 2),
              builtBottomNavigationBarItem(
                  icon: AppAssets.iconRadio, label: 'Radio', index: 3),
              builtBottomNavigationBarItem(
                  icon: AppAssets.iconTime, label: 'Time', index: 4),
            ]
        ),
      ),
      body: Stack(
        children: [
          Image.asset(backgroundImagesList[selectedIndex],
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),

          SafeArea(
            child: Column(
              spacing: 20,
              children: [
                Image.asset(AppAssets.logo),
                Expanded(child: tabsList[selectedIndex]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem builtBottomNavigationBarItem({required String icon,
    required String label, required int index}) {
    return BottomNavigationBarItem(icon: selectedIndex == index ?
    Container(
        decoration: BoxDecoration(
          color: AppColors.lightBlackColor,
          borderRadius: BorderRadius.circular(66),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 20,
        ),
        child: ImageIcon(AssetImage(icon))) :
    ImageIcon(AssetImage(icon)),
        label: label
    );
  }
}
