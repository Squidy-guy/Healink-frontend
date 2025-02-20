import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/premium_dialog.dart';
import 'package:healink_app/common_widgets/profile_menu_item.dart';
import 'package:healink_app/screens/profile/controller/profile_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController controller = Get.find();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(74)),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(kAvatar10),
                ),
                SizedBox(width: getWidth(18)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          controller.plan.value,
                          style: AppStyles.blackTextStyle()
                              .copyWith(fontSize: 16.sp),
                        )),
                    Obx(() => Text(
                          controller.userName.value,
                          style: AppStyles.blackTextStyle().copyWith(
                              fontSize: 16.sp, fontWeight: FontWeight.w700),
                        )),
                    Obx(() => Text(
                          controller.joinedDate.value,
                          style: AppStyles.blackTextStyle().copyWith(
                              fontWeight: FontWeight.w400, fontSize: 16.sp),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(height: getHeight(30)),
            InkWell(
              onTap: () {
                showPremiumDialog();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: getWidth(12)),
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [kPrimaryColor, kShadow2Color]),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: getWidth(4), top: getHeight(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Premium",
                            style: AppStyles.whiteTextStyle().copyWith(
                              color: kWhiteColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: getHeight(4)),
                          Text(
                            "See all",
                            style: AppStyles.whiteTextStyle().copyWith(
                              color: kWhiteColor,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      kPremiumIcon,
                      width: getWidth(151),
                      height: getHeight(93),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: getHeight(23)),
            ProfileMenuItem(
              iconPath: kLinkIcon,
              title: "Share Healink",
              onTap: () {
                showCopiedDialog();
              },
            ),
            ProfileMenuItem(
              iconPath: kPersonIcon,
              title: "My account",
              onTap: () {
                Get.toNamed(kMyAccountScreenRoute);
              },
            ),
            ProfileMenuItem(
              iconPath: kGroupIcon,
              title: "Friends",
              onTap: () {
                Get.toNamed(kFriendsScreenRoute);
              },
            ),
            ProfileMenuItem(
              iconPath: kSettingsIcon,
              title: "Settings",
              onTap: () {
                Get.toNamed(kSettingsScreenRoute);
              },
            ),
            ProfileMenuItem(
              iconPath: kLogoutIcon,
              title: "Logout",
              onTap: () {
                Get.offAllNamed(kLoginScreenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }

  void showCopiedDialog() {
    Get.dialog(
      Dialog(
        backgroundColor: kWhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(12), vertical: getHeight(11)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Link copied\nready to share",
                textAlign: TextAlign.center,
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: getHeight(25)),
              Icon(Icons.check, color: kGreenColor, size: 30.sp),
            ],
          ),
        ),
      ),
    );
  }
}
