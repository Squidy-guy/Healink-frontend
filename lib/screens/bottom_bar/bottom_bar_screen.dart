import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/screens/biomarkers/biomarker_screen.dart';
import 'package:healink_app/screens/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:healink_app/screens/home/home_screen.dart';
import 'package:healink_app/screens/insights_screen/insights_screen.dart';
import 'package:healink_app/screens/knowledge/knowledge_screen.dart';
import 'package:healink_app/screens/profile/profile_screen.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';

import '../insights_screen/insights_screen.dart';

class BottomBarScreen extends StatelessWidget {
  final BottomNavController controller = Get.find();

  final List<Widget> screens = [
    HomeScreen(),
    InsightsScreen(),
    BiomarkerScreen(),
    KnowledgeScreen(),
    ProfileScreen(),
  ];

  BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screens[controller.selectedIndex.value]),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final BottomNavController controller = Get.find();

  final List<String> icons = [
    kHomeIcon,
    kChartIcon,
    kFlaskIcon,
    kFriendsIcon,
    kProfileIcon,
  ];

  final List<String> selectedIcons = [
    kHomeFilledIcon,
    kChartFilledIcon,
    kFlaskFilledIcon,
    kFriendsIcon,
    kProfileFilledIcon,
  ];

  CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: getHeight(58),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
          decoration: BoxDecoration(
            color: kWhiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(icons.length, (index) {
              bool isSelected = controller.selectedIndex.value == index;
              return GestureDetector(
                onTap: () => controller.changeIndex(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      isSelected ? selectedIcons[index] : icons[index],
                      width: getWidth(25),
                      height: getHeight(20),
                    ),
                    if (isSelected)
                      Container(
                        margin: EdgeInsets.only(top: getHeight(5)),
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                  ],
                ),
              );
            }),
          ),
        ));
  }
}
