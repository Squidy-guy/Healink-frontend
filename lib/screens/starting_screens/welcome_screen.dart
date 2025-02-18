import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: getHeight(79)),
            Center(
              child: Image.asset(
                kWelcome,
                height: getHeight(150),
                width: getWidth(205),
              ),
            ),
            SizedBox(height: getHeight(26)),
            Text(
              'Make a free account to access\nyour profile',
              style: AppStyles.blackTextStyle().copyWith(
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getHeight(60)),
            CustomButton(
              title: 'Create Account',
              onTap: () {
                Get.toNamed(kRegisterScreenRoute);
              },
            ),
            SizedBox(height: getHeight(30)),
            CustomButton(
              title: 'Log In',
              onTap: () {
                Get.toNamed(kLoginScreenRoute);
              },
              color: kWhiteColor,
              textColor: kPrimaryColor,
              borderColor: kPrimaryColor,
              showShadow: false,
            ),
            SizedBox(height: getHeight(120)),
            Text(
              'Healink makes behavior change easy,\nfun, and rewarding, and adapts to\nyour behavior over time.',
              style: AppStyles.blackTextStyle().copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
