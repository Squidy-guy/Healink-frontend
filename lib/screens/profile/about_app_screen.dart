import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_appBar.dart';
import 'package:healink_app/common_widgets/profile_menu_item.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(75)),
            CustomAppBar(title: ""),
            ProfileMenuItem(
              iconPath: kNoteIcon,
              title: "Terms and Conditions",
              onTap: () {
                Get.toNamed(kTermsConditionsScreenRoute);
              },
            ),
            ProfileMenuItem(
              iconPath: kPrivacyIcon,
              title: "Privacy Policy",
              onTap: () {
                Get.toNamed(kPrivacyPolicyScreenRoute);
              },
            ),
            ProfileMenuItem(
              iconPath: kDisclaimerIcon,
              title: "Disclaimer",
              onTap: () {
                Get.toNamed(kDisclaimerScreenRoute);
              },
            ),
            Image.asset(
              kDisclaimer,
              width: getWidth(110),
              height: getHeight(135),
            ),
          ],
        ),
      ),
    );
  }
}
