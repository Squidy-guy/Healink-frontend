import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_appBar.dart';
import 'package:healink_app/common_widgets/profile_menu_item.dart';
import 'package:healink_app/common_widgets/profile_toggle_item.dart';
import 'package:healink_app/screens/profile/controller/profile_controller.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsScreen extends StatelessWidget {
  final ProfileController controller = Get.find();

  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getHeight(75)),
              CustomAppBar(title: "Settings"),
              SizedBox(height: getHeight(30)),
              ProfileMenuItem(
                iconPath: kLockIcon,
                title: "Reset password",
                onTap: () {},
              ),
              ProfileMenuItem(
                iconPath: kChatIcon,
                title: "Feedback",
                onTap: () {
                  Get.toNamed(kFeedbackScreenRoute);
                },
              ),
              ProfileMenuItem(
                iconPath: kNoteIcon,
                title: "Terms, Conditions & Disclaimer",
                onTap: () {
                  Get.toNamed(kAboutAppScreenRoute);
                },
              ),
              SizedBox(height: getHeight(24)),
              Text(
                "Bind Account",
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: getHeight(24)),
              Obx(() => ProfileToggleItem(
                    iconPath: kGoogleIcon,
                    title: "Google",
                    value: controller.googleLinked.value,
                    onChanged: (val) {
                      controller.googleLinked.value = val;
                    },
                  )),
              Obx(() => ProfileToggleItem(
                    iconPath: kAppleIcon,
                    title: "Apple",
                    value: controller.appleLinked.value,
                    onChanged: (val) {
                      controller.appleLinked.value = val;
                    },
                  )),
              Obx(() => ProfileToggleItem(
                    iconPath: kFacebookIcon,
                    title: "Facebook",
                    value: controller.facebookLinked.value,
                    onChanged: (val) {
                      controller.facebookLinked.value = val;
                    },
                  )),
              SizedBox(height: getHeight(24)),
            ],
          ),
        ),
      ),
    );
  }
}
