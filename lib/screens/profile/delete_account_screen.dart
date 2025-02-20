import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_appBar.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/common_widgets/profile_menu_item.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(75)),
            CustomAppBar(title: "Delete your account?"),
            SizedBox(height: getHeight(24)),
            Text(
              "Hmm, are you sure you want to delete your whole Healink account and data?\n\n"
              "You’ll lose all your habit progress data!\n\n"
              "Please give feedback to help us improve and give us a second chance.",
              style: AppStyles.blackTextStyle()
                  .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: getHeight(24)),
            ProfileMenuItem(
              iconPath: kLinkIcon,
              title: "Feedback",
              onTap: () {
                Get.toNamed(kFeedbackScreenRoute);
              },
            ),
            SizedBox(height: getHeight(54)),
            CustomButton(
              height: 48,
              width: double.infinity,
              title: "Delete my account",
              color: kRedColor,
              shadowColor: kDarkRedColor,
              borderColor: kRedColor,
              onTap: () {
                Get.offAllNamed(kLoginScreenRoute);
              },
            ),
            SizedBox(height: getHeight(24)),
            CustomButton(
              height: 48,
              width: double.infinity,
              title: "Back",
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
